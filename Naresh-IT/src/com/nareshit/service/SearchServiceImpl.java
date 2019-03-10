package com.nareshit.service;

import java.util.ArrayList;
import java.util.List;

import com.nareshit.bo.StudentsBO;
import com.nareshit.dao.SearchDAO;
import com.nareshit.dao.SearchDAOImpl;
import com.nareshit.dto.StudentsDTO;

public class SearchServiceImpl implements SearchService {
	
	public SearchServiceImpl() {
		
	}

	@Override
	public List<StudentsDTO> searchRecord(String course) throws Exception {
		System.out.println("SearchServiceImpl.searchRecord()");
		SearchDAO dao=null;
		List<StudentsBO> listBO=null;
		List<StudentsDTO> listDTO=null;
		StudentsDTO dto=null;
		
		//Use DAO
		dao=new SearchDAOImpl();
		listBO=dao.getRecords(course);
		
		
		
		//Convert ListBO to ListDTO
		listDTO=new ArrayList<StudentsDTO>();
		
		for(StudentsBO bo:listBO) {
		
		dto=new StudentsDTO();
		dto.setRegId(bo.getRegId());
		dto.setFname(bo.getFname());
		dto.setLname(bo.getLname());
		dto.setAge(bo.getAge());
		dto.setGender(bo.getGender());
		dto.setCourse(bo.getCourse());
		dto.setTrack(bo.getTrack());
		dto.setAadharNo(bo.getAadharNo());
		dto.setPhNo(bo.getPhNo());
		dto.setAddrs(bo.getAddrs());
		dto.setState(bo.getState());
		dto.setCity(bo.getCity());
		dto.setRegDate(bo.getRegDate());
		
		//add dto class to listDTO
		listDTO.add(dto);
		}
		
		return listDTO;
	}

}
