<%@ page import="java.sql.*, javax.sql.* ,java.io.*" %>
<html>
<head >
<title>flight detailes </title>


<link rel="stylesheet" href="style1.css" />
<script type="text/javascript" src="jscript.js">


</script>

<center ><h1 class="m"><u>WELCOME TO AIRLINE TICKET RESERVATION</u></h1></center>
<center>
<span class="blink_text" > <i class="n" ><b>............FLIGHT DETAILES............</b></i></center>
</span>
<hr>

</head>
<form action="flightdetailes" method="post">
<body background="sky.jpg">


</center>

<%  try{
         
                                    Class.forName("com.mysql.jdbc.Driver");
                                    String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
                                    Connection con=DriverManager.getConnection(url,"root","password");  
                                     Statement st= con.createStatement();
                         ResultSet rs=st.executeQuery("SELECT * FROM flight_detailes");

           

	if(rs!=null){
	
	
	         out.println("<h3>----------------------------------------------------------------------------------------------------------------------------------------------------</h3>");	
	out.println("<center><table> <tr><th>flight_code</th><th>airline_code</th><th>flight_name</th><th>source</th><th>destination</th><th>total_capacity</th></tr>");
		
		while(rs.next())
		{
		
			
			out.println("<tr>");
			out.println("<td>");
			out.print(rs.getInt("flight_code"));
			out.println("</td>");	
	
		
			out.println("<td>");
			out.print(rs.getString("airline_code"));
			out.println("</td>");	
			
			out.println("<td>");
			out.print(rs.getString("flight_name"));
			out.println("</td>");	
			
			out.println("<td>");
			out.print(rs.getString("source"));
			out.println("</td>");	
			
			out.println("<td>");
			out.print(rs.getString("destionation"));
			out.println("</td>");
				
			out.println("<td>");
			out.print(rs.getInt("total_capacity"));
			out.println("</td>");	
			
			out.println("</tr>");
		}
		out.println("</table></center>");
		
	}  	}catch(Exception e) {out.println(e);}
	%>	
<br/>

<br/><center><a href="http://localhost:8080/project/airmain.jsp">click here try once more</a></center>
<br/><center><a href="http://localhost:8080/project/airmain.jsp">go back to HOME</a></center>

</form>
</body>
</html>
