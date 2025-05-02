package com.boot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.dto.AnnounceDTO;
import com.boot.dto.Criteria;
import com.boot.dto.FaqsDTO;
import com.boot.dto.PageDTO;
import com.boot.service.FaqannService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class NoticeController {
	
	@Autowired
	private FaqannService service;
	
	
	@RequestMapping("/notice")
	public String notice(Criteria cri, Model model) {
		log.info("@# notice()");
		log.info("@# cri=>"+cri);
		
//		model.addAttribute("list", service.listWithPaging(cri));
		ArrayList<FaqsDTO>noticeList = service.noticelistWithPaging(cri);
		int total = service.noticegetTotalCount(cri);
		log.info("@# total=>"+total);
		
		model.addAttribute("noticeList", noticeList);
//		model.addAttribute("pageMaker", new PageDTO(123, cri));
		model.addAttribute("pageMaker", new PageDTO(total, cri));
		return "notice";
	}
	
	@RequestMapping("/notice_write_ok")
	public String notice_write_ok(FaqsDTO faqsDTO){
		log.info("@# notice_write_ok");
//		log.info("@# AnnounceDTO=> "+announceDTO);
		
		service.notice_write_ok(faqsDTO);
		log.info("@# notice_write_ok작성완료!");
		
		return "redirect:/notice";
	}
//	
//	@GetMapping("/notice")
//	public String noticeList(Model model) {
//		List<Map<String, String>> noticeList = new ArrayList<>();
//		
//		return "notice";
//	}
	
	@GetMapping("/notice_write")
	public String notice_write(Model model) {
		List<Map<String, String>> noticeList = new ArrayList<>();
		
		return "notice_write";
	}
}
