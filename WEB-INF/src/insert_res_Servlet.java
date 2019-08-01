import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
//import Project;

public class insert_res_Servlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
			int reservation_id = Integer.parseInt(request.getParameter("reservation_id"));
			int flight_code = Integer.parseInt(request.getParameter("flight_code"));
			String journey_date = (String)request.getParameter("journey_date");
		        String source = (String)request.getParameter("source");
			String destination = (String)request.getParameter("destination");
			String status = (String)request.getParameter("status");
			String journey_time = (String)request.getParameter("journey_time");
						
			String url;   
			try{ 
			int res=0;
			res = mainairpage.insertreservation(reservation_id,flight_code,journey_date,source,destination,status,journey_time);

			
			if(res > 0)
			{
				url = response.encodeURL("http://localhost:8080/project/res_suc.jsp");
				response.sendRedirect(url);
			}
			else
			{
				url = response.encodeURL("http://localhost:8080/project/res_fail.jsp");
				response.sendRedirect(url);
			}
			}catch(Exception e){url = response.encodeURL("http://localhost:8080/myservlet/res_fail.jsp");
				response.sendRedirect(url); }
					
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
				doGet(request, response);
		}
	
}
