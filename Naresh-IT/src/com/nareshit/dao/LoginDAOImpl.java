package com.nareshit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class LoginDAOImpl implements LoginDAO {
    private static final String FETCH_USERS="SELECT * FROM LOGIN WHERE UNAME=? AND PASS=?";
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;

    @Override
    public boolean check(String uname, String pass) throws Exception {
        Connection con=null;
    	//Get Pooled Connection
    	con=getConnection();
        //Create PreaparedStatement Object
        ps=con.prepareStatement(FETCH_USERS);
        //Set Values To Query Parameters
        ps.setString(1, uname);
        ps.setString(2, pass);
        //Send and Execute Query
        rs=ps.executeQuery();
        //Process the ResultSet

        if(rs.next()) {
            System.out.println("ResultSet");
            System.out.println(rs.getString(1));
            System.out.println(rs.getString(2));
            return true;
        }
        return false;
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
