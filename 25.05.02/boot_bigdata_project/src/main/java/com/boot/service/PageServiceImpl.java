package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.CommentDAO;
import com.boot.dao.PageDAO;
import com.boot.dto.BoardDTO;
import com.boot.dto.CommentDTO;
import com.boot.dto.Criteria;
import com.boot.dto.DefectListDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("PageService")
public class PageServiceImpl implements PageService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<DefectListDTO> listWithPaging(Criteria cri) {
		log.info("@# PageServiceImpl listWithPaging");
		log.info("@# cri 여기"+cri);
		
		PageDAO dao=sqlSession.getMapper(PageDAO.class);
		ArrayList<DefectListDTO> defectList = dao.listWithPaging(cri);
		
		return defectList;
	}
	


	@Override
	public int getTotalCount(Criteria cri) {
log.info("@# PageServiceImpl getTotalCount");
		
		PageDAO dao=sqlSession.getMapper(PageDAO.class);
		int total = dao.getTotalCount(cri);
		
		return total;
	}
	
}




