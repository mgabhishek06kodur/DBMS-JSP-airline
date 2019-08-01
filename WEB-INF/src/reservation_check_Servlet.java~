import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class reservation_check_Servlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
       throws ServletException,IOException
       {
       
       
       
       RequestDispatcher  dispatch = getServletContext().getRequestDispatcher("/flightdetaile.jsp");
       
       try{
       int reservation_id = Integer.parseInt(request.getParameter("reservation_id"));
       
    
	
	ResultSet rs;
	
	rs = mainairpage.reservationcheck(reservation_id);
	
	String res;
	if(rs==null)
	{
	dispatch.forward(request,response);
	}
	else
	{  
	request.setAttribute("res",rs);
	//response.sendRedirect("http:/localhost:8080/timetable.jsp");
	
	//dispatch=getServletContext().getRequestDispatcher("http://localhost:8080/timetable.jsp");
	
	dispatch.forward(request,response);
	
	}
	
		}catch(Exception e)
		
		{
		//System.out.println(e);
		dispatch.forward(request,response);
		}
		} 
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException
	{
	doGet(request,response);
	}
 } 
