<html>
	<head>
		<title>Insert Page </title>
	</head>
	<body background="aero2.jpg">
		<h1 align="center">FLIGHT RESERVATION PAGE</h1>
		<h3 align="center">PAYMENT DETAILES</h3>
		<form action="insert_pay_Servlet" method="post">
			<table align="center">
				<tr>
					<td><label>CLASSES:</label> </td> 
					<td><input type="text" name="class_id" id="class_id" value="enter your CLASSES ID  (i)  "/></td>
				</tr>
				
				
				<tr>
					<td><label>CHECK NO:</label> </td> 
					<td><input type="text" name="check_no" id="check_no" value="enter your CHECK NO   (i)"/></td>
				</tr>
				
				
				<tr>
					<td><label>CREDIT CARD NO:</label> </td> 
					<td><input type="text" name="credit_card_no" id="credit_card_no" value="enter your CREDIT CARD NO  (i)"/></td>
				</tr>
				<tr>
					<td><label>PAID AMOUNT:</label> </td> 
					<td><input type="text" name="paid_amount" id="paid_amount" value="enter your PAID AMOUNT  (i)"/></td>
				</tr>
				<tr>
					<td><label>PAYMENT DATE:</label> </td> 
					<td><input type="text" name="payment_date" id="payment_date" value="enter your PAYMENT_DATE (yyyy/mm/dd)"/></td>
				</tr>
				<tr>
					<td><label>PASSENGER NO:</label> </td> 
					<td><input type="text" name="passenger_no" id="passenger_no" value="enter your PASSENGER NO   (i)"/></td>
				</tr>
				
				
				<tr>
					<td></td>
					<td><input type="reset" value="clear"/> &nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="submit" value="submit"/> </td>
				</tr>
			</table>
			              <h5 align="center">NOTE: *if not apply on your entry enter it as "null" </h5>
				
			<br/>
                                <br/><center><a href="http://localhost:8080/project/airmain.jsp">go to home page</a></center>
                                
			<br/>
                                <br/><center><a href="http://localhost:8080/project/insertpas.jsp">go back to previous page</a></center>
		</form>
	</body>
</html>
