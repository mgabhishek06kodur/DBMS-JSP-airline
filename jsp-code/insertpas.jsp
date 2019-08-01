<html>
	<head>
		<title>Insert Page </title>
	</head>
	<body background="aero0.jpg">
		<h1 align="center">FLIGHT RESERVATION PAGE</h1>
		<h3 align="center">PASSENGER DETAILES</h3>
		<form action="insert_pas_Servlet" method="post">
			<table align="center">
				<tr>
					<td><label>PASSENGER NO:</label> </td> 
					<td><input type="text" name="passanger_no" id="passanger_no" value="enter your PASSENGER NO   (i)"/></td>
				</tr>
				
				
				<tr>
					<td><label>FLIGHT CODE:</label> </td> 
					<td><input type="text" name="flight_code" id="flight_code" value="enter your FLIGHT CODE  (i)"/></td>
				</tr>
				
				
				<tr>
					<td><label>DATE OF BIRTH:</label> </td> 
					<td><input type="text" name="dob" id="dob" value="enter your DOB (yyyy/mm/dd)"/></td>
				</tr>
				<tr>
					<td><label>ADDRESS:</label> </td> 
					<td><input type="text" name="address" id="address" value="enter your ADDRESS    (c)"/></td>
				</tr>
				<tr>
					<td><label>NATIONALITY:</label> </td> 
					<td><input type="text" name="nationality" id="nationality" value="enter your NATIONALITY   (c)"/></td>
				</tr>
				<tr>
					<td><label>NAME:</label> </td> 
					<td><input type="text" name="name" id="name" value="enter your NAME   (c)"/></td>
				</tr>
				
				<tr>
					<td><label>GENDER:</label> </td> 
					<td>
						<select name="gender" id="gender">
							<option disabled="disabled" selected="selected">Select a gender</option>
							<option>m</option>
							<option>f</option>
							
						</select>
					</td>
				</tr>
				
				
				<tr>
					<td><label>PHONE NO:</label> </td> 
					<td><input type="text" name="phone_no" id="phone_no" value="enter your PHONE NO   (i)"/></td>
				</tr>
				
				<tr>
					<td><label>EMAIL-ID:</label> </td> 
					<td><input type="text" name="email_id" id="email_id" value="enter your EMAIL-ID   (c)"/></td>
				</tr>
				
				<tr>
					<td><label>PASSPORT NO:</label> </td> 
					<td><input type="text" name="passport_no" id="passport_no" value="enter your PASSPORT NO   (c)"/></td>
				</tr>
				
				<tr>
					<td><label>RESERVATION ID:</label> </td> 
					<td><input type="text" name="reservation_id" id="reservation_id" value="enter your RESERVATION ID   (c)"/></td>
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
                                
			<br/>
                                <br/><center><a href="http://localhost:8080/project/insertres.jsp">go back to previous page</a></center>
		</form>
	</body>
</html>
