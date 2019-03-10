package com.nareshit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nareshit.dao.LoginDAO;
import com.nareshit.dao.LoginDAOImpl;
import com.nareshit.dto.StudentsDTO;
import com.nareshit.service.SearchService;
import com.nareshit.service.SearchServiceImpl;

@WebServlet("/controller")
public class MainController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       PrintWriter pw=res.getWriter();
    	String reqType=req.getParameter("reqtype");
    	String course=req.getParameter("q");
    	

        
        if(reqType.equalsIgnoreCase("login")) {
        	 String uname=req.getParameter("uname");
             String pass=req.getParameter("pass");
             LoginDAO dao=new LoginDAOImpl();
        try {
            if (dao.check(uname, pass)) {
                HttpSession session = req.getSession();
                session.setAttribute("username", uname);

                res.sendRedirect("search.jsp");
            } else {

                res.sendRedirect("login.html");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
       }
        
        
        else if(reqType.equalsIgnoreCase("search")) {
        	
        	List<StudentsDTO> listDTO=null;
        	SearchService service=null;
        	
        	//Use Service
        	service=new SearchServiceImpl();
        	try {
				listDTO=service.searchRecord(course);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
        	String destination = "/search.jsp";
        	req.setAttribute("studentList", listDTO);

        	RequestDispatcher rd = req.getRequestDispatcher(destination);
        	rd.forward(req, res);
        	
        }
        
        else if(reqType.equalsIgnoreCase("add")) {
        	String fname=req.getParameter("fname");
        	String lname=req.getParameter("lname");
        	String age=req.getParameter("age");
        	String gender=req.getParameter("gender");
        	String courses=req.getParameter("course");
        	String track=req.getParameter("track");
        	String aadhar=req.getParameter("aadhar");
        	String mob=req.getParameter("mob");
        	String addrs=req.getParameter("addrs");
        	String state=req.getParameter("state");
        	String city=req.getParameter("city");
        	
        	//Read Form Data
        	pw.println(fname+"<br>");
        	pw.println(lname+"<br>");
        	pw.println(age+"<br>");
        	pw.println(gender+"<br>");
        	pw.println(courses+"<br>");
        	pw.println(track+"<br>");
        	pw.println(aadhar+"<br>");
        	pw.println(mob+"<br>");
        	pw.println(addrs+"<br>");
        	pw.println(state+"<br>");
        	pw.println(city+"<br>");
        }
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req,res);
    }
}
