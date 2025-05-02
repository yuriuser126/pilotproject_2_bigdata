package com.boot.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.dto.BoardDTO;
import com.boot.dto.CommentDTO;
import com.boot.dto.Defect_DetailsDTO;
import com.boot.dto.Defect_ReportsDTO;
import com.boot.service.DefactService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class DefectController {
	@Autowired
    private DefactService defactservice;
	
	
	@RequestMapping("/insertDefect")
	public String insertDefect(Defect_ReportsDTO defect_ReportsDTO) {
		log.info("@# insertDefect()");
		log.info("@# defect_ReportsDTO=>"+defect_ReportsDTO);
		
		defactservice.insertDefect(defect_ReportsDTO);
		
		return "redirect:defect_reports_ok";
	}
	
	 // ID를 받아 defect_reports 테이블에서 데이터를 조회하여 반환하는 API
    @GetMapping("/api/selectDefectreport")
    @ResponseBody
    public Defect_ReportsDTO ajaxSelectDefect(@RequestParam("id") int id) {
        log.info("@# AJAX 요청 id => " + id);

        // ID로 defect_reports 테이블에서 데이터를 조회
        List<Defect_ReportsDTO> defectList = defactservice.selectDefectreport(id);
        
        // 조회된 데이터가 있으면 첫 번째 결과를 반환
        if (!defectList.isEmpty()) {
            return defectList.get(0);
        } else {
            return null; // 해당 ID에 해당하는 데이터가 없을 경우
        }
    }
	
	

    @RequestMapping("/insertDefectDetails")
	public String insertDefectDetails(Defect_DetailsDTO defect_DetailsDTO) {
		log.info("@# insertDefectDetails()");
		log.info("@# defect_ReportsDTO=>"+defect_DetailsDTO);
		
		log.info("manufacturing_period: " + defect_DetailsDTO.getManufacturing_period());
		
		defactservice.insertDefectDetails(defect_DetailsDTO);
		
		return "redirect:defect_detail";
	}
	

	

	
	

	@RequestMapping("/defect_reports")
	public String list(Model model) {
		log.info("@#defect_reports");
		
		return "defect_reports";
	}
	
	@RequestMapping("/defect_reports_ok")
	public String defect_reports_ok(Model model) {
		log.info("@#defect_reports");
		return "defect_reports_ok";
	}
	
	@RequestMapping("/defect_details_check")
	public String defect_details_check(Model model) {
		log.info("@#defect_details_check");
		return "defect_details_check";
	}
	
	@RequestMapping("/defect_list")
	public String defect_list(Model model) {
		log.info("@#defect_list");
		return "defect_list";
	}
	
	@RequestMapping("/defect_detail")
	public String defect_detail(Model model) {
		log.info("@#defect_detail");
		return "defect_detail";
	}
//	
}
