package com.boot.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.dto.BoardDTO;
import com.boot.dto.Criteria;
import com.boot.dto.DefectListDTO;
import com.boot.dto.PageDTO;
import com.boot.service.PageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PageController {
	@Autowired
	private PageService service;
	
	@RequestMapping("/defectList")
	public String defectList(Criteria cri, Model model) {
		log.info("@# PagedefectList()");
		log.info("@# cri=>"+cri);
		
//		model.addAttribute("list", service.listWithPaging(cri));
		ArrayList<DefectListDTO> defectList = service.listWithPaging(cri);
		int total = service.getTotalCount(cri);
		log.info("@# total=>"+total);
		
		model.addAttribute("defectList", defectList);
//		model.addAttribute("pageMaker", new PageDTO(123, cri));
		model.addAttribute("pageMaker", new PageDTO(total, cri));
		
		return "defectList";
	}
	
}







