package com.nareshit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nareshit.bo.StudentsBO;

public class SearchDAOImpl implements SearchDAO {
	private static final String GET_STUDENTS="SELECT * FROM STUDENTS WHERE COURSE=?";

	@Override
	public List<StudentsBO> getRecords(String course) throws Exception {
		Connection con=null;
    	PreparedStatement ps=null;
		ResultSet rs=null;
		StudentsBO bo=null;
		List<StudentsBO> listBO=null;
		listBO=new ArrayList<StudentsBO>();
    	//Get Pooled Connection
    	con=getConnection();
        //Create PreaparedStatement Object
        ps=con.prepareStatement(GET_STUDENTS);
        //Set value to query params
        System.out.println(course);
        ps.setString(1, course);
        
        //Execute Query
        rs=ps.executeQuery();	
       while(rs.next()) {
    	   		bo=new StudentsBO();
        		//Setting Result Values Into BO 
        		bo.setRegId(rs.getInt(1));
        		bo.setFname(rs.getString(2));
        		bo.setLname(rs.getString(3));
        		bo.setAge(rs.getInt(4));
        		bo.setGender(rs.getString(5));
        		bo.setCourse(rs.getString(6));
        		bo.setTrack(rs.getString(7));
        		bo.setAadharNo(rs.getLong(8));
        		bo.setPhNo(rs.getLong(9));
        		bo.setAddrs(rs.getString(10));
        		bo.setState(rs.getString(11));
        		bo.setCity(rs.getString(12));
        		bo.setRegDate(rs.getDate(13));
        		
        		listBO.add(bo);
        	}
        System.out.println("end");
		return listBO;
	}
	
	 private Connection getConnection() throws Exception {
	    	InitialContext ic=null;
	    	DataSource ds=null;
	    	Connection con=null;
	    	//Get Datasource 
	    	ic=new InitialContext();
	    	ds=(DataSource)ic.lookup("java:/comp/env/DsJndi");
	    	con=ds.getConnection();
	    	return con;
	    }

}
