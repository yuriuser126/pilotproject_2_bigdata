package com.boot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Defect_DetailsDTO {
	private int id; 
	private String product_name; 
	private String manufacturer; 
	private String manufacturing_period; 
	private String model_name; 
	private String recall_type; 
	private String contact_info; 
	private String additional_info; 
}
