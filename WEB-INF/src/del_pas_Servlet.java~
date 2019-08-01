import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class del_pas_Servlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
			int passanger_no = Integer.parseInt(request.getParameter("passanger_no"));
			
			try{ 
	
			int res=0;
			res = mainairpage.delbypassenger_no(passanger_no);
			
			String url;   
			
			if(res > 0)
			{
				url = response.encodeURL("http://localhost:8080/project/delete_reservation.jsp");
				response.sendRedirect(url);
			}
			else
			{
				url = response.encodeURL("http://localhost:8080/project/del_pasfail.jsp");
				response.sendRedirect(url);
			}
			}catch(Exception e){System.out.println(e);}
					
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		
				doGet(request, response);
		}
	
}
