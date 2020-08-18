package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;

@WebServlet("/login_verify")
public class login_verify extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException{

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
                
        
        String loginname = request.getParameter("loginname");
        String loginpassword = request.getParameter("loginpassword");
        String loginsubmit = request.getParameter("loginsubmit");


		String signname = request.getParameter("signname");
		String signpassword = request.getParameter("signpassword");
		String signemail = request.getParameter("signemail");
        String signdob = request.getParameter("signdob");
        String signgender = request.getParameter("signgender");
		String signsubmit = request.getParameter("signsubmit");
		
		
		

		if (signsubmit != null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ninjapanda","root","");
				Statement stmt = conn.createStatement();
				stmt.executeUpdate("INSERT INTO cust(name, password, email, dob, gender) VALUES('"+signname+"','"+signpassword+"','"+signemail+"','"+signdob+"','"+signgender+"')"); 
                 
                response.sendRedirect("login.jsp"); 

			}catch(Exception e){
				out.println(e);
			}
		} 
		
		
	
         else if (loginsubmit != null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ninjapanda","root","");
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT name, password FROM cust WHERE name = '"+loginname+"' AND password = '"+loginpassword+"'");
				if (rs.next()){
					
					HttpSession session = request.getSession();  
					session.setAttribute("loginname", loginname);
					response.sendRedirect("main.jsp"); 
				}
				else {
					response.sendRedirect("login.jsp"); 
				}
				
			}catch(Exception e){
				out.println(e);
			}
		}
		
	}
}  