<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html>
<html>
<head>
<title> NINJA PANDA EXPRESS </title>
</head>

<style>


html {
    text-align: center;
    background-color: #333;
    color: white;
}

/* Add a black background color to the top navigation */
.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: red;
  color: white;
}

.container {
    /* border: 1px solid red; */
    top: 50%;
    left: 50%;
    width: 100%;
    height: 94%;
}

.form {
    text-align: center;
  
}

.table {
    margin-left: auto;
    margin-right: auto;

}

.table td{
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
 

 


<div class="topnav">
 <a  class="active" href="login.jsp">signout</a>
  <a href="ticket.jsp">ticket</a>
  <a>Hello, <%=checklogin %> </a>
</div>

<div class="container">
  <div class="form">
    <form method="post" action="ticket">

<input type="hidden" name="user" value= <%=checklogin %> />
<h2>Step 1: Select details</h2>
Movie:
<select type="text" name="movie">  
    <option name="endgame" value="Endgame">Avengers: Endgame</option>
		<option name="Toy Story 4" value="Toy Story 4">Toy Story 4</option>
		<option name="John Wick" value="John Wick">John Wick</option>
</select>



<br><br>
Time:
<select type="text" name="time">  
    <option name="800" value="8:00">8:00 pm</option>
		<option name="1000" value="10:00">10:00 pm</option>
		<option name="1200" value="12:00">12:00 am</option>
		<option  name="1215" value="12:15">12:15 am</option>
</select>



<br><br>
Cinema: 
<select type="text" name="cinema"> 
    <option name="klsentral" value="KL Sentral">KL Sentral</option>
		<option name="Sunway" value="Sunway">Sunway City</option>
		<option name="Melawati" value="Melawati">Melawati Mall</option>
		<option name="IOI" value="IOI">IOI City Mall</option>


</select>

 <br><br>
  <br><br>

</div>


<h2>Step 2: Please choose your seat single or double</h2>

<br />
<br />

<table class="table">
<tr>
<td style="text-align: center; border: 2px solid white; background-color:black; color:white;" colspan="8">SCREEN</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
  <tr>
    <td><input type="checkbox" value="1A" name="seat"  disabled checked/> 1A</td><td> |AISLE| </td>
    <td><input type="checkbox" value="1B" name="seat" disabled checked > 1B</td>
    
    <td><input type="checkbox" value="1C"  name="seat"/> 1C</td><td> |AISLE| </td>
    <td><input type="checkbox" value="1D"  name="seat"/> 1D</td>
  </tr>
  <tr> 
  <tr> </tr>
    <td><input type="checkbox" value="2A"  name="seat" disabled checked/> 2A</td> <td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="2B"  name="seat"/> 2B</td>
   
    <td> <input type="checkbox" value="2C" name="seat" disabled checked/> 2C</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="2D"  name="seat"/> 2D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="3A" name="seat" disabled checked/> 3A</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td> <input type="checkbox" value="3B" name="seat"/> 3B</td>
    
    <td> <input type="checkbox" value="3C" name="seat"  disabled checked > 3C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="3D"  name="seat"/> 3D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="4A" name="seat" disabled checked/> 4A</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="4B" name="seat"/> 4B </td>
    
    <td><input type="checkbox" value="4C" name="seat"/> 4C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="4D"  name="seat"/> 4D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="5A" name="seat"  disabled checked/> 5A</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td> <input type="checkbox" value="5B" name="seat"  /> 5B</td>
    
    <td> <input type="checkbox" value="5C" name="seat"  /> 5C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="5D"  name="seat"/> 5D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="6A" name="seat"/> 6A</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td> <input type="checkbox" value="6B" name="seat"/> 6B</td>
   
    <td><input type="checkbox" value="6C" name="seat"/> 6C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="6D"  name="seat"/> 6D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="7A" name="seat" disabled checked/> 7A</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="7B" name="seat"/> 7B</td>
    
    <td><input type="checkbox" value="7C" name="seat"/> 7C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="7D"  name="seat"/> 7D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="8A" name="seat"/> 8A</td> <td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td> <input type="checkbox" value="8B" name="seat"/> 8B</td>
   
    <td>  <input type="checkbox" value="8C" name="seat"/> 8C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="8D"  name="seat"/> 8D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="9A" name="seat" disabled checked/> 9A</td> <td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="9B" name="seat" disabled checked/> 9B</td>
 
    <td> <input type="checkbox" value="9C" name="seat"/> 9C <br /></td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="9D"  name="seat"/> 9D</td>
  </tr>
  <tr>
    <td><input type="checkbox" value="10A" name="seat" disabled checked/> 10A</td> <td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="10B" name="seat"/> 10B</td>
   
    <td> <input type="checkbox" value="10C" name="seat"/> 10C</td><td>||&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;||</td>
    <td><input type="checkbox" value="10D"  name="seat"/> 10D</td>
  </tr>
</table>


<br><br><br><br>
 <h2> Step 3: Fill the payment details </h2>
 <strong>
 Notes: Please pay via debit
 </strong>
  <br><br>
   <br>
   Name: <input type="text" name="pname"/><br><br>
  Card no: <input type="text"  name="pcard"/><br><br>
Expired date: <input type="text" placeholder="mm/yy" name="pexpired"/><br><br>
Bank: <input type="text" name="pbank"/><br><br>

<br>
  <input type="Submit" Value="Purchase" name="ticketsubmit"><br><br><br><br>
</div>
</div>
</form>

<%}
		%> 
</body>
</html>

