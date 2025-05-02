package com.boot.dto;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FaqsDTO {
	private int id;
	private String question;
	private String answer;
	private Timestamp created_at;
}











