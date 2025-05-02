package com.boot.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.AnnounceDTO;
import com.boot.dto.BoardDTO;
import com.boot.dto.CommentDTO;
import com.boot.dto.Criteria;
import com.boot.dto.DefectListDTO;
import com.boot.dto.FaqsDTO;
import com.boot.dto.PageDTO;
import com.boot.service.FaqannService;
import com.boot.service.PageService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AnnounceController {

	@Autowired
	private FaqannService service;
	
	@RequestMapping("/announce")
	public String announce(Criteria cri, Model model) {
		log.info("@# announce()");
		log.info("@# cri=>"+cri);
		
//		model.addAttribute("list", service.listWithPaging(cri));
		ArrayList<AnnounceDTO> announceList = service.announcelistWithPaging(cri);
		int total = service.announcegetTotalCount(cri);
		log.info("@# total=>"+total);
		
		model.addAttribute("announceList", announceList);
//		model.addAttribute("pageMaker", new PageDTO(123, cri));
		model.addAttribute("pageMaker", new PageDTO(total, cri));
		return "announce";
	}
	
	@RequestMapping("/main")
	public String main(Criteria cri,Model model){
		log.info("@# main");
		ArrayList<FaqsDTO>noticeList = service.noticelistWithPaging(cri);
		int total = service.noticegetTotalCount(cri);
		log.info("@# total=>"+total);
		
		model.addAttribute("noticeList", noticeList);
		return "main";
	}
	@RequestMapping("/announce_write")
	public String announce_write(Model model){
		log.info("@# announce_write");
//		List<Map<String, String>> announceList = new ArrayList<>();
		
		return "announce_write";
	}
	@RequestMapping("/announce_write_ok")
	public String announce_write_ok(AnnounceDTO announceDTO){
		log.info("@# announce_write_ok");
//		log.info("@# AnnounceDTO=> "+announceDTO);
		
		service.announce_write_ok(announceDTO);
		log.info("@# announce작성완료!");
		
		return "redirect:/announce";
	}
	@RequestMapping("/announce_view")
	public String announce_view(@RequestParam HashMap<String, String> param, Model model){
		log.info("@# announce_view");
		
		AnnounceDTO dto = service.announce_view(param);
		model.addAttribute("announce_view", dto);
		
//		content_view.jsp 에서 pageMaker 를 가지고 페이징 처리 
		model.addAttribute("pageMaker", param);
		
//		log.info("@# announce_view dto => "+dto);
		log.info("@# announce_view param => "+param);
		
		return "announce_view";
	}
}
