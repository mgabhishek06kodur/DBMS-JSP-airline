<html>
	<head>
		<title>Delete reservation Page </title>
	</head>
	

<hr><center ><b> <h2>WELCOME TO AIRLINE TICKET RESERVATION </h2></b></center>
                           <center>  <h3> EXISTING RESERVATION CANCELLATION</h3> </center>
	<body background="aero6.jpg">
	<form action="del_res_Servlet" method="post" >
		<table align="center">
		
	
		<br/>
		<br/>
			<tr>
				<td><label>RESERVATION ID:</label></td>
				<td><input type="text" name="reservation_id" id="reservation_id" value="Enter the RESERVATION ID..(i)" /> </td>
			</tr>

			<tr>
				<td><input type="reset" value="Clear" /> </td>
				<td><input type="submit" value="OK" /> </td>
			</tr>
		</table>
	</form>	
	</body>
</html>
