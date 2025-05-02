package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.BoardAttachDAO;
import com.boot.dao.BoardDAO;
import com.boot.dao.DefectListDAO;
import com.boot.dto.BoardDTO;
import com.boot.dto.DefectListDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("DefectListService")
public class DefectListServiceImpl implements DefectListService{
	@Autowired
	private SqlSession sqlSession;
	


	@Override
	public ArrayList<DefectListDTO> defectList() {
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		ArrayList<DefectListDTO> defectList = dao.defectList();
		log.info("defectServiceImpl");
		return defectList;
	}




	@Override
	public DefectListDTO defectView(HashMap<String, String> param) {
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		DefectListDTO dto = dao.defectView(param);
		
		return dto;
	}
	@Override
	public DefectListDTO defect_modify(HashMap<String, String> param) {
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		DefectListDTO dto = dao.defect_modify(param);
		
		return dto;
	}

	@Override
	public void modify(HashMap<String, String> param) {
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		dao.modify(param);
	}

	@Override
	public void delete(HashMap<String, String> param) {
		log.info("@# DefectListServiceImpl delete param=>"+param);
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		
		
		dao.delete(param);
		
		
	}




	@Override
	public DefectListDTO getById(int id) {
		DefectListDAO dao=sqlSession.getMapper(DefectListDAO.class);
		dao.getById(id);
		return dao.getById(id);
	}



}




