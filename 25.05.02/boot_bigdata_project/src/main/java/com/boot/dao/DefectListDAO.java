package com.boot.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.*;

public interface DefectListDAO {
	public ArrayList<DefectListDTO> defectList();
//	public void write(HashMap<String, String> param);
//	public void write(DefectListDTO defectListDTO);
	public DefectListDTO defectView(HashMap<String, String> param);
	public DefectListDTO defect_modify(HashMap<String, String> param);
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
	public DefectListDTO getById(int id);

}















