package com.boot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DefectReportSummaryDTO {
    private String label;           // 구분 → 예: "계"
    private int report_year;
    private String report_month;
    private int domesticModelCount; // 국산_차종
    private int domesticCount;      // 국산_대수
    private int importedModelCount; // 수입_차종
    private int importedCount;      // 수입_대수
    private int totalModelCount;    // 전체_차종
    private int totalCount;         // 전체_대수
}
