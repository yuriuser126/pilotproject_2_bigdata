package com.boot.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.boot.dao.BoardAttachDAO;
import com.boot.dao.PageDAO;
import com.boot.dao.RecallStaticDAO;
import com.boot.dto.Criteria;
import com.boot.dto.DefectReportSummaryDTO;
import com.boot.dto.Defect_DetailsDTO;
import com.boot.dto.ManufacturerRecallDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("RecallService")
public class RecallServiceImpl implements RecallService{
	
	private final String serviceKey = "PLMG96N58S";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Defect_DetailsDTO> getProductList(Criteria cri, String cntntsId) throws Exception {
		String xml = fetchXmlFromApi(cri, cntntsId);
        return XmlParserUtil.parseToList(xml);
	}

	@Override
	public int getTotalCount(Criteria cri, String cntntsId) throws Exception {
		String xml = fetchXmlFromApi(cri, cntntsId);
        return XmlParserUtil.getTotalCount(xml);
	}
	
	private String fetchXmlFromApi(Criteria cri, String cntntsId) throws Exception {
        String apiUrl = "https://www.consumer.go.kr/openapi/recall/contents/index.do"
                + "?serviceKey=" + serviceKey
                + "&pageNo=" + cri.getPageNum()
                + "&cntPerPage=" + cri.getAmount()
                + "&cntntsId=" + cntntsId;

        StringBuilder result = new StringBuilder();
        URL url = new URL(apiUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();

        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-Type", "application/xml; charset=UTF-8");

        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        String line;
        while ((line = rd.readLine()) != null) {
            result.append(line);
        }
        rd.close();
        conn.disconnect();

        return result.toString();
    }
	
	public class XmlParserUtil {

	    // XML을 파싱해서 Defect_DetailsDTO 객체 리스트로 변환
	    public static List<Defect_DetailsDTO> parseToList(String xml) throws Exception {
	        List<Defect_DetailsDTO> defectList = new ArrayList<>();
	        
	        // XML 문서 파서 생성
	        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	        DocumentBuilder builder = factory.newDocumentBuilder();
	        
	        // XML 스트링을 Document 객체로 파싱
	        Document doc = builder.parse(new InputSource(new StringReader(xml)));
	        
	        // <content> 태그를 찾기
	        NodeList nodeList = doc.getElementsByTagName("content");

	        for (int i = 0; i < nodeList.getLength(); i++) {
	            Element element = (Element) nodeList.item(i);

	            // 각 content에 대해 필요한 정보를 가져와서 Defect_DetailsDTO에 담기
	            Defect_DetailsDTO defectDetails = new Defect_DetailsDTO();
	            defectDetails.setProduct_name(getTagValue("productNm", element));
	            defectDetails.setManufacturer(getTagValue("makr", element));
	            defectDetails.setManufacturing_period(getTagValue("mnfcturPd", element));
	            defectDetails.setModel_name(getTagValue("modlNmInfo", element));
	            defectDetails.setRecall_type(getTagValue("recallSe", element));
	            defectDetails.setContact_info(getTagValue("recallEntrpsInfo", element));
	            defectDetails.setAdditional_info(getTagValue("etcInfo", element));

	            defectList.add(defectDetails);
	        }

	        return defectList;
	    }

	    // 특정 태그의 값을 추출하는 helper method
	    private static String getTagValue(String tag, Element element) {
	        NodeList list = element.getElementsByTagName(tag);
	        return list.getLength() > 0 ? list.item(0).getTextContent() : "";
	    }
	    
	    public static int getTotalCount(String xml) throws Exception {
	        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	        DocumentBuilder builder = factory.newDocumentBuilder();
	        
	        // XML 스트링을 Document 객체로 파싱
	        Document doc = builder.parse(new InputSource(new StringReader(xml)));
	        
	        // <totalCount> 태그 값 가져오기
	        NodeList nodeList = doc.getElementsByTagName("totalCount");
	        if (nodeList.getLength() > 0) {
	            return Integer.parseInt(nodeList.item(0).getTextContent());
	        }
	        return 0;
	    }
	}

	@Override
    public DefectReportSummaryDTO getDefectReportSummary(Map<String, Object> paramMap) {
		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO.class);
        return dao.getdefect_reports_count(paramMap);
    }
	
	@Override
	public List<DefectReportSummaryDTO> getDefectReportSummaryByYear(Map<String, Object> paramMap) {
		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO.class);
	    return dao.getDefectReportSummaryByYear(paramMap);
	}

	@Override
    public List<ManufacturerRecallDTO> getYearlyRecallStats(int startYear, int endYear) {
		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO.class);
        return dao.getYearlyRecallStats(startYear, endYear);
    }

	@Override
	public List<DefectReportSummaryDTO> getDefectReportSummaryByMonth(Map<String, Object> paramMap) {
		log.info("paramMap =>"+paramMap);
		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO.class);
		return dao.getDefectReportSummaryByMonth(paramMap);
	}

	@Override
	public List<ManufacturerRecallDTO> getYearlyRecallStatsByMonth(Map<String, Object> paramMap) {
		log.info("paramMap =>"+paramMap);
		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO.class);
		return dao.getYearlyRecallStatsByMonth(paramMap);
	}
	
//	public Map<String, Object> getdefect_reports_count(Integer startYear, Integer endYear,Map<String, Object> params){
////	public int getdefect_reports_count(Integer startYear, Integer endYear) {
//		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO.class);
////		RecallStaticDAO dao = sqlSession.getMapper(RecallStaticDAO);
//	    params.put("start_year", startYear);
//	    params.put("end_year", endYear);
//	    return dao.getdefect_reports_count(params);
//	}
}
