package com.boot.dto;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnnounceDTO {
	private int id;
	private String title;
	private String content;
	private Timestamp created_at;
}











