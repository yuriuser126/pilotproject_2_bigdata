package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.BoardAttachDAO;
import com.boot.dao.BoardDAO;
import com.boot.dao.FaqannDAO;
import com.boot.dao.PageDAO;
import com.boot.dto.AnnounceDTO;
import com.boot.dto.BoardDTO;
import com.boot.dto.Criteria;
import com.boot.dto.DefectListDTO;
import com.boot.dto.FaqsDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("FaqannService")
public class FaqannServiceImpl implements FaqannService{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<AnnounceDTO> announcelistWithPaging(Criteria cri) {
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		ArrayList<AnnounceDTO> announceList = dao.announcelistWithPaging(cri);
		
		return announceList;
	}

	@Override
	public int announcegetTotalCount(Criteria cri) {
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		int total = dao.announcegetTotalCount(cri);
		return total;
	}

	@Override
	public void announce_write_ok(AnnounceDTO announceDTO) {
		log.info("@# FaqannService");
		log.info("@# AnnounceDTO=> "+announceDTO);
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		dao.announce_write_ok(announceDTO);
	}
	
	@Override
	public void notice_write_ok(FaqsDTO faqsDTO) {
		log.info("@# FaqannService");
		log.info("@# notice_write_ok faqsDTO=> "+faqsDTO);
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		dao.notice_write_ok(faqsDTO);
	}
	@Override
	public ArrayList<FaqsDTO> noticelistWithPaging(Criteria cri) {
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		ArrayList<FaqsDTO> noticeList = dao.noticelistWithPaging(cri);
		
		return noticeList;
	}

	@Override
	public int noticegetTotalCount(Criteria cri) {
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		int total = dao.noticegetTotalCount(cri);
		return total;
	}

	@Override
	public AnnounceDTO announce_view(HashMap<String, String> param) {
		FaqannDAO dao=sqlSession.getMapper(FaqannDAO.class);
		AnnounceDTO dto = dao.announce_view(param);
		return dto;
	}

}




