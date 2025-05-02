package com.boot.dto;
import java.sql.Date;
import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Defect_ReportsDTO {
	private int id;
	
	private String reporter_name;
	private String birth_date;
	private String mobile_number;
	private String phone_number;
	private String address;
	private String password;
	private boolean visibility;
	private Timestamp report_date;
	
	private String report_type;
	private String relationship_with_owner;
	private String owner_or_corporation_name;
	private String owner_birth_date;
	private String car_registration_number;
	private String car_model;
	private String car_manufacturer;
	private Date car_manufacturing_date;
	
	
}