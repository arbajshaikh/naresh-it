package com.nareshit.service;

import java.util.List;

import com.nareshit.dto.StudentsDTO;

public interface SearchService {
	
	public List<StudentsDTO> searchRecord(String course)throws Exception;

}
