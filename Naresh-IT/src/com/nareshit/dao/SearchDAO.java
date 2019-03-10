package com.nareshit.dao;

import java.util.List;

import com.nareshit.bo.StudentsBO;
import com.nareshit.dto.StudentsDTO;

public interface SearchDAO {
	
	public List<StudentsBO> getRecords(String course)throws Exception;

}
