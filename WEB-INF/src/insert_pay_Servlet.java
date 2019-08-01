import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class insert_pay_Servlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
       RequestDispatcher  dispatch = getServletContext().getRequestDispatcher("/insertpay.jsp");
		
			
			int class_id = Integer.parseInt(request.getParameter("class_id"));
			int check_no = Integer.parseInt(request.getParameter("check_no"));
			int credit_card_no = Integer.parseInt(request.getParameter("credit_card_no"));
			int paid_amount = Integer.parseInt(request.getParameter("paid_amount"));
			String payment_date = (String)request.getParameter("payment_date");
			
			int passenger_no = Integer.parseInt(request.getParameter("passenger_no"));
			try{ 
	
			int res=0;
			res = mainairpage.paymentinsert(class_id,check_no,credit_card_no,paid_amount, payment_date,passenger_no);
			
			String url;   
			
			if(res > 0)
			{
				url = response.encodeURL("http://localhost:8080/project/pay_suc.jsp");
				response.sendRedirect(url);
			}
			else
			{
				url = response.encodeURL("http://localhost:8080/project/pay_fail.jsp");
				response.sendRedirect(url);
			}
			}catch(Exception e){System.out.println(e);}
					
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
				doGet(request, response);
		}
	
}
