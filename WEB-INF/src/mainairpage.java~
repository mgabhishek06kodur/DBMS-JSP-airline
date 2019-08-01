
import java.sql.*;
import javax.sql.*;

public class mainairpage {


	public static int insertreservation(int reservation_id, int flight_code, String journey_date, String source, String destination, String status, String journey_time) 
	
	{  
		source = source.trim().toUpperCase();
		destination = destination.trim().toUpperCase();
		status = status.trim().toUpperCase();
		
		try {
		
		 
		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/project?useSSL=false";
		Connection con=DriverManager.getConnection(url ,"root","password");
		
		CallableStatement cstmt = con.prepareCall("{call insertreservation(?,?,?,?,?,?,?)}");
  
  		cstmt.setInt(1, reservation_id);
  		cstmt.setInt(2, flight_code);
  		cstmt.setString(3, journey_date);
  		cstmt.setString(4, source);
  		cstmt.setString(5, destination);
  		cstmt.setString(6, status);
  		cstmt.setString(7, journey_time);
  		
  				
		cstmt.execute();
		int count = 0;
		count = cstmt.getUpdateCount();
		if(count > 0)
			return count;
		else	
			return -1;
			
		}catch(Exception e) { return -1;}	
  		
	}  
	
	

	
	public static int delbyreservation_id(int reservation_id)
	{
		reservation_id = reservation_id;
		try
		{
		
		    Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
			Connection con=DriverManager.getConnection(url,"root","password");
			Statement stmt = con.createStatement();
			
			int count=0;
			count = stmt.executeUpdate("DELETE FROM reservation WHERE reservation_id='" +reservation_id+"';");
			
			if(count > 0)
				return count;
			else
				return -1;	
			
		}catch(Exception e){ return -1; }
	
	}
	
	
		

	
	public static int delbypassenger_no(int passanger_no)
	{
		passanger_no = passanger_no;
		try
		{
		
		    Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
			Connection con=DriverManager.getConnection(url,"root","password");
			Statement stmt = con.createStatement();
			
			int count=0;
			count = stmt.executeUpdate("DELETE FROM passenger WHERE passanger_no='" +passanger_no+"';");
			
			if(count > 0)
				return count;
			else
				return -1;	
			
		}catch(Exception e){ return -1; }
	
	}
	
	
	
	
public static int passengerinsert(int passanger_no,int flight_code,String dob,String address,String nationality,String name,String gender,int phone_no,String email_id, String passport_no,int reservation_id)
	{	
		address = address.trim().toUpperCase();
		name = name.trim();
		name = name.toUpperCase();
		nationality = nationality.trim();
		nationality = nationality.toUpperCase();
			try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
			Connection con=DriverManager.getConnection(url,"root","password");
		

	Statement stmt = con.createStatement();
			
			int count=0;
			count = stmt.executeUpdate("INSERT INTO passenger VALUES('" +passanger_no+ "','" +flight_code+ "','" +dob+"','"+address+"','" +nationality+ "','" +name+"','"+gender+"','" +phone_no+ "','" +email_id+"','"+passport_no+"','" +reservation_id+ "');");
			
			if(count > 0)
				return count;
			else
				return -1;	
			
		}catch(Exception e){ return -1; }


}
	     
	     public static int paymentinsert(int class_id,int check_no,int credit_card_no,int paid_amount,String payment_date,int passenger_no)
	{	
	
			try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
			Connection con=DriverManager.getConnection(url,"root","password");
		

	Statement stmt = con.createStatement();
			
			int count=0;
			count = stmt.executeUpdate("INSERT INTO payment VALUES('" +class_id+ "','" +check_no+ "','" +credit_card_no+"','"+paid_amount+"','" +payment_date+ "','" +passenger_no+"');");
			
			if(count > 0)
				return count;
			else
				return -1;	
			
		}catch(Exception e){ return -1; }

 }
 
             
   public static ResultSet flightdetailes()
    {
	
			try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
                                    Connection con=DriverManager.getConnection(url,"root","password");  
                                     Statement st= con.createStatement();
                         ResultSet rs=st.executeQuery("SELECT * FROM flight_detailes");
                                   return rs;
   /*
        while (rs.next())
        {
   
            System.out.print(rs.getInt(1));
	   // System.out.print("\t || \t");
	    System.out.println(rs.getInt("c.fds"));
        }
System.out.println("-------------------------------------------------------------------------------------");
       
   con.close();           */        }catch(Exception e)
                            {
                             return null;
                                         }
       }
      
      
      
           public static ResultSet reservationcheck(int reservation_id)
            {
       
       				reservation_id = reservation_id;                   
	      try{
                 Class.forName("com.mysql.jdbc.Driver");
                 String url="jdbc:mysql://localhost:3306/project?useSSL=false";
     
                 Connection con=DriverManager.getConnection(url,"root","password");  
                 Statement st= con.createStatement();
          ResultSet rs=st.executeQuery("SELECT r.reservation_id, r.journey_date, r.source, r.destination, p.name, p.address, p.gender,p.email_id, p.passport_no FROM reservation r, passenger p WHERE r.reservation_id=p.reservation_id AND r.reservation_id='"+reservation_id+"';");
                return rs;
   /*
        while (rs.next())
        {
   
            System.out.print(rs.getInt(1));
	   // System.out.print("\t || \t");
	    System.out.println(rs.getInt("c.pasno"));
        }
System.out.println("-------------------------------------------------------------------------------------");
       
   con.close();*/          }catch(Exception e)
                         {
                           return null;
                          }
       }
      




	
}
