package com.boot.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.*;

public interface PageDAO {
	public ArrayList<DefectListDTO> listWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
}















