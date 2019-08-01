import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class insert_pas_Servlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
       RequestDispatcher  dispatch = getServletContext().getRequestDispatcher("/insertpas.jsp");
		
			
			int passanger_no = Integer.parseInt(request.getParameter("passanger_no"));
			int flight_code = Integer.parseInt(request.getParameter("flight_code"));
			String dob = (String)request.getParameter("dob");
			String address = (String)request.getParameter("address");
			String nationality = (String)request.getParameter("nationality");
			String name = (String)request.getParameter("name");
			//char gender = (String)request.getParameter("gender").charAt(0);
			String gender = (String)request.getParameter("gender");
			int phone_no = Integer.parseInt(request.getParameter("phone_no"));
			String email_id = (String)request.getParameter("email_id");
			String passport_no = (String)request.getParameter("passport_no");
			int reservation_id = Integer.parseInt(request.getParameter("reservation_id"));
			try{ 
	
			int res=0;
			res = mainairpage.passengerinsert(passanger_no,flight_code,dob,address,nationality,name,gender,phone_no,email_id,passport_no,reservation_id);
			
			String url;   
			
			if(res > 0)
			{
				url = response.encodeURL("http://localhost:8080/project/pas_suc.jsp");
				response.sendRedirect(url);
			}
			else
			{
				url = response.encodeURL("http://localhost:8080/project/pas_fail.jsp");
				response.sendRedirect(url);
			}
			}catch(Exception e){System.out.println(e);}
					
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
				doGet(request, response);
		}
	
}
