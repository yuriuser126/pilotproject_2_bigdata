package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.*;

public interface DefectListService {
	public ArrayList<DefectListDTO> defectList();
//	public void write(HashMap<String, String> param);
//	public void write(DefectListDTO defectListDTO);
	public DefectListDTO defectView(HashMap<String, String> param);
	public DefectListDTO defect_modify(HashMap<String, String> param);
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
	public DefectListDTO getById(int id);
}
