package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.*;

public interface PageService {
	public ArrayList<DefectListDTO> listWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
}
