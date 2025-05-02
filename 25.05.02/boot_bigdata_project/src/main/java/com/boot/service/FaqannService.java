package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.*;

public interface FaqannService {
	public ArrayList<AnnounceDTO> announcelistWithPaging(Criteria cri);
	public int announcegetTotalCount(Criteria cri);
	public void announce_write_ok(AnnounceDTO announceDTO);
	public AnnounceDTO announce_view(HashMap<String, String> param);
	
	public void notice_write_ok(FaqsDTO faqsDTO);
	public ArrayList<FaqsDTO> noticelistWithPaging(Criteria cri);
	public int noticegetTotalCount(Criteria cri);
//	public void modify(HashMap<String, String> param);
//	public void delete(HashMap<String, String> param);
}
