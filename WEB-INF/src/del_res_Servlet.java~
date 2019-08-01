import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class del_res_Servlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
			int reservation_id = Integer.parseInt(request.getParameter("reservation_id"));
			
			try{ 
	
			int res=0;
			res = mainairpage.delbyreservation_id(reservation_id);
			
			String url;   
			
			if(res > 0)
			{
				url = response.encodeURL("http://localhost:8080/project/del_suc.jsp");
				response.sendRedirect(url);
			}
			else
			{
				url = response.encodeURL("http://localhost:8080/project/del_fail.jsp");
				response.sendRedirect(url);
			}
			}catch(Exception e){System.out.println(e);}
					
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
				doGet(request, response);
		}
	
}
