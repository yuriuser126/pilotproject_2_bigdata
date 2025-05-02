package com.boot.service;

import java.util.List;
import java.util.Map;

import com.boot.dto.Criteria;
import com.boot.dto.DefectReportSummaryDTO;
import com.boot.dto.Defect_DetailsDTO;
import com.boot.dto.ManufacturerRecallDTO;

public interface RecallService {
    List<Defect_DetailsDTO> getProductList(Criteria cri, String cntntsId) throws Exception;
    public List<DefectReportSummaryDTO> getDefectReportSummaryByYear(Map<String, Object> paramMap);
    int getTotalCount(Criteria cri, String cntntsId) throws Exception;
    DefectReportSummaryDTO getDefectReportSummary(Map<String, Object> paramMap);
    List<ManufacturerRecallDTO> getYearlyRecallStats(int startYear, int endYear);
//    int getdefect_reports_count(Integer startYear, Integer endYear);
    List<DefectReportSummaryDTO> getDefectReportSummaryByMonth(Map<String, Object> paramMap);
    List<ManufacturerRecallDTO> getYearlyRecallStatsByMonth(Map<String, Object> paramMap);
}
