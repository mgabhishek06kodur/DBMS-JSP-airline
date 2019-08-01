<%@ page import="java.sql.*, javax.sql.*" %>
<html>
<head >
<title>flight detailes </title>


<link rel="stylesheet" href="style1.css" />
<script type="text/javascript" src="jscript.js">


</script>

<center ><h1 class="m"><u>WELCOME TO AIRLINE TICKET RESERVATION</u></h1></center>
<center>
<span class="blink_text" > <i class="n" ><b>............RESERVATION DETAILES............</b></i></center>
</span>
<hr>

</head>
<body background="airport.jpg">
<form action="reservation_check_Servlet" method="post">
<br /><center>
<table border="5">
<tr><td><center> <lable  class="m">RESERVATION ID:</label></td>
<td><input type="text" name="reservation_id" id="reservation_id" value="insert RESERVATION ID  (i)" onClick="disappear1()"/>
</td></tr>
</table>

<input type="submit" value="search" />
<input type="reset" value="clear" /></center>

<%

	ResultSet rs = (ResultSet)request.getAttribute("res");

	if(rs!=null){
	
	
	         out.println("<h3><center>----------------------------------------------------------------------------------------------------------------------------------------------------</center></h3>");	
	out.println("<center><table> <tr><th>reservation_id</th><th>source</th><th>destionation</th><th>name</th><th>address</th><th>gender</th><th>email_id</th><th>passport_no</th></tr>");
		
		while(rs.next())
		{
		
			
			out.println("<tr>");
			out.println("<td>");
			out.print(rs.getInt("r.reservation_id"));
			out.println("</td>");	
	
		
			out.println("<td>");
			out.print(rs.getString("r.source"));
			out.println("</td>");	
			
			out.println("<td>");
			out.print(rs.getString("r.destination"));
			out.println("</td>");	
			
			out.println("<td>");
			out.print(rs.getString("p.name"));
			out.println("</td>");	
			
			out.println("<td>");
			out.print(rs.getString("p.address"));
			out.println("</td>");
				
			out.println("<td>");
			out.print(rs.getString("p.gender"));
			out.println("</td>");
			
			out.println("<td>");
			out.print(rs.getString("p.email_id"));
			out.println("</td>");
			
			out.println("<td>");
			out.print(rs.getString("p.passport_no"));
			out.println("</td>");	
			
			out.println("</tr>");
		}
		out.println("</table></center>");
		
	}
	%>	
<br/>

<br/><center><a href="http://localhost:8080/project/airmain.jsp">click here try once more</a></center>
<br/><center><a href="http://localhost:8080/project/airmain.jsp">go back to HOME</a></center>

</form>
</body>
</html>
