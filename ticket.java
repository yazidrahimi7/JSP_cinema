package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;

@WebServlet("/ticket")
public class ticket extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException{

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
                
        String ticketuser = request.getParameter("user");
        String ticketmovie = request.getParameter("movie");
		String tickettime = request.getParameter("time");
		String ticketcinema = request.getParameter("cinema");
		String ticketseat = request.getParameter("seat");
        String ticketsubmit = request.getParameter("ticketsubmit");
		
		
		if (ticketsubmit != null){
			try{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ninjapanda","root","");
				Statement stmt = conn.createStatement();
				stmt.executeUpdate("INSERT INTO ticket(user ,movie, time, cinema, seat) VALUES('"+ticketuser+"','"+ticketmovie+"','"+tickettime+"','"+ticketcinema+"','"+ticketseat+"')"); 
                 
                response.sendRedirect("ticket.jsp"); 

			}catch(Exception e){
				out.println(e);
			}

			

		} 
				
	}
}  