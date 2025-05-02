package com.boot.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.Criteria;
import com.boot.dto.DefectReportSummaryDTO;
import com.boot.dto.Defect_DetailsDTO;
import com.boot.dto.ManufacturerRecallDTO;
import com.boot.dto.PageDTO;
import com.boot.service.RecallService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class RecallController {
	@Autowired
    private RecallService recallService;
	
//	@RequestMapping("/recall_statics")
//	public String recall_statics(Model model) {
//		return "recall_statics";
//	}
	
	@RequestMapping("/recall_statics_year")
	public String recall_statics_year( 
			@RequestParam(required = false) Integer startYear,
		    @RequestParam(required = false) Integer endYear,
		    Model model) {
		
		log.info("@#recall_statics_year");
		Map<String, Object> paramMap = new HashMap<>();
		if (startYear == null || startYear == 0) {
			startYear=2000;
		}
		if (endYear == null || endYear == 0) {
			endYear=2025;
		}
		paramMap.put("start_year", startYear);
        paramMap.put("end_year", endYear);
        
        //리콜현황
        DefectReportSummaryDTO summary = recallService.getDefectReportSummary(paramMap);
        model.addAttribute("summary", summary);
        List<DefectReportSummaryDTO> summaryList  = recallService.getDefectReportSummaryByYear(paramMap);
        model.addAttribute("summaryList", summaryList);
        List<ManufacturerRecallDTO> stats = recallService.getYearlyRecallStats(startYear, endYear);
        model.addAttribute("recallStats", stats);
        
        Map<String, List<ManufacturerRecallDTO>> grouped = stats.stream()
        	    .collect(Collectors.groupingBy(ManufacturerRecallDTO::getCar_manufacturer));

        	model.addAttribute("groupedRecallStats", grouped);
		//결함신고
        
		return "recall_statics_year";
	}
	
	@GetMapping("/recall_statics_month")
    public String recall_statics_month(
        @RequestParam(required = false) Integer startYear,
        @RequestParam(required = false) Integer endYear,
        @RequestParam(required = false) Integer startMonth,
        @RequestParam(required = false) Integer endMonth,
        Model model) {
		
		log.info("recall_statics_month");
        Map<String, Object> params = new HashMap<>();
        params.put("start_year", startYear);
        params.put("start_month", startMonth);
        params.put("end_year", endYear);
        params.put("end_month", endMonth);

        List<DefectReportSummaryDTO> monthsummaryList = recallService.getDefectReportSummaryByMonth(params);
//        log.info("monthsummaryList"+monthsummaryList);
        model.addAttribute("monthsummaryList", monthsummaryList);
//        log.info("monthsummaryList: {}", monthsummaryList);
        List<ManufacturerRecallDTO> stats = recallService.getYearlyRecallStatsByMonth(params);
        model.addAttribute("recallStats", stats);
        Map<String, List<ManufacturerRecallDTO>> grouped = stats.stream()
        	    .collect(Collectors.groupingBy(ManufacturerRecallDTO::getCar_manufacturer));

        	model.addAttribute("groupedRecallStats", grouped);
        
        return "recall_statics_month"; 
    }
	
	@RequestMapping("/recall_list")
	public String recall_list(Criteria cri, Model model) throws Exception {
	    String cntntsId = "0301"; 
	    List<Defect_DetailsDTO> list = recallService.getProductList(cri, cntntsId);
	    //923개의 리콜이 xml 92개로 나눠져 있어서 일단 하드코딩했다
//	    int total = recallService.getTotalCount(cri, cntntsId);
	    int total = 923;

	    model.addAttribute("recall_list", list);
	    model.addAttribute("pageMaker", new PageDTO(total, cri));
	    
	    log.info("@#"+cri);
	    log.info("@#list : "+list);
	    log.info("@#total : "+total);
	    log.info("@# : "+new PageDTO(total, cri));
	    
		return "recall_list";
	}
	
	
}
