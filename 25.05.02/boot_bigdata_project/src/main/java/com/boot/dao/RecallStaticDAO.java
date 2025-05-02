package com.boot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.dto.DefectReportSummaryDTO;
import com.boot.dto.ManufacturerRecallDTO;

@Mapper
public interface RecallStaticDAO {
	DefectReportSummaryDTO getdefect_reports_count(Map<String, Object> paramMap);
	public List<DefectReportSummaryDTO> getDefectReportSummaryByYear(Map<String, Object> paramMap);
	List<ManufacturerRecallDTO> getYearlyRecallStats(@Param("startYear") int startYear, @Param("endYear") int endYear);
	List<DefectReportSummaryDTO> getDefectReportSummaryByMonth(Map<String, Object> paramMap);
	List<ManufacturerRecallDTO> getYearlyRecallStatsByMonth(Map<String, Object> paramMap);
}















