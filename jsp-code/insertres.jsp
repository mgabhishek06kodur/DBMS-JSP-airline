<html>
	<head>
		<title>Insert Page </title>
	</head>
	<body background="aero4.jpg">
		<h1 align="center">FLIGHT RESERVATION PAGE</h1>
		<form action="insert_res_Servlet" method="post">
			<table align="center">
				<tr>
					<td><label>RESERVATION ID:</label> </td> 
					<td><input type="text" name="reservation_id" id="reservation_id" value="enter your RESERVATION ID   (i)"/></td>
				</tr>
				
				
				<tr>
					<td><label>FLIGHT CODE:</label> </td> 
					<td><input type="text" name="flight_code" id="flight_code" value="enter your FLIGHT CODE  (i)"/></td>
				</tr>
				
				
				<tr>
					<td><label>JOURNEY DATE:</label> </td> 
					<td><input type="text" name="journey_date" id="journey_date" value="enter your JOURNEY DATE   (i)"/></td>
				</tr>
				<tr>
					<td><label>SOURCE:</label> </td> 
					<td><input type="text" name="source" id="source" value="enter your SOURCE    (c)"/></td>
				</tr>
				<tr>
					<td><label>DESTINATION:</label> </td> 
					<td><input type="text" name="destination" id="destination" value="enter your DESTINATION   (c)"/></td>
				</tr>
				<tr>
					<td><label>STATUS:</label> </td> 
					<td><input type="text" name="status" id="status" value="enter your STATUS   (c)"/></td>
				</tr>
				
				<tr>
					<td><label>JOURNEY TIME:</label> </td> 
					<td><input type="text" name="journey_time" id="journey_time" value="enter your JOURNEY TIME   (c)"/></td>
				</tr>
				
				
				
				<tr>
				<br></br>
					<td></td>
					<td><input type="reset" value="clear"/> &nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="submit" value="ENTER"/> </td>
				</tr>
			</table>
			
			<br/>
                                <br/><center><a href="http://localhost:8080/project/airmain.jsp">go to home page</a></center>
		</form>
	</body>
</html>
