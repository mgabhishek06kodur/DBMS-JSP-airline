import java.io.*;
import java.sql.*;
import javax.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class flightdetailes extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
       throws ServletException,IOException
       {
       
       
       
       RequestDispatcher  dispatch = getServletContext().getRequestDispatcher("/flightdetailes.jsp");
       
       try{
	
	ResultSet rs;
	
	rs = mainairpage.flightdetailes();
	
	String res;
	if(rs==null)
	{
	dispatch.forward(request,response);
	}
	else
	{  
	request.setAttribute("res",rs);
	//response.sendRedirect("http:/localhost:8080/aaaa.jsp");
	
	dispatch=getServletContext().getRequestDispatcher("/flightdetailes.jsp");
	
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
