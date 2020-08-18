<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
   <head>
      <title>Ticket</title>
   </head>
   <style>
   table {
       text-align: center;
       margin: 50px;
   }
   td{
       padding: 5px;
   }
   </style>

   <body>
<% 
  String checklogin = (String)session.getAttribute("loginname");
  if (checklogin == null)
  {
%>
<jsp:forward page="login.jsp" />
<%}  else { %>

<input type="hidden" name="currentuser" value=<%=checklogin %>  />


      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/ninjapanda"
         user = "root"  password = ""/>

         <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * FROM ticket where user = "<%=checklogin %>";
         </sql:query>
 <center>
      <table border = "1" width = "50%">
         <tr>
            <th>Name</th>
            <th>Movie Name</th>
            <th>Time</th>
            <th>Cinema</th>
            <th>Seat No.</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.user}"/></td>
               <td> <c:out value = "${row.movie}"/></td>
               <td> <c:out value = "${row.time}"/></td>
               <td> <c:out value = "${row.cinema}"/></td>
               <td> <c:out value = "${row.seat}"/></td>
            </tr>
         </c:forEach>
      </table>
      </center>
<% } %>
   </body>
</html>
