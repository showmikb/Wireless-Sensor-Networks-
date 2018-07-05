package backend;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;


@WebServlet("/Fetch")
public class Fetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String test = "Hello World";
       
   
    public Fetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
/*
		Connection con = null;
		Statement st = null;
	//	int arr[] = new int[12];
		try
		{
			Class.forName("com.mysql.jdbc.Driver");  
			
			System.out.println("Connecting to database...");
			
        	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/weathero","root","");
			
        	System.out.println("\n\n\t\tCONNECTION  CREATED\n\n\t\t");
        	
        	st = con.createStatement();
        	
        	String sql = "SELECT id, temperature, humidity FROM historic";
        	
        	ResultSet rs = st.executeQuery(sql);
        	rs.last();
        	int size = rs.getRow();
        	rs.beforeFirst();
        	System.out.println(" \n\n\n\n\t\tRs = "+size);
        	int arr[] = new int[size];
        	
        	  while(rs.next()){
        	         //Retrieve by column name
        	         int id  = rs.getInt("id");
        	         int temp = rs.getInt("temperature");
        	         int humidity = rs.getInt("humidity");
        	        // String date = rs.getString("date");
        	         arr[id]=humidity;
        	         
        	         //Display values
        	         System.out.print("ID: " + id);
        	         System.out.print(", Temperature: " + temp);
        	         System.out.print(", Humidity: " + humidity);
        	         System.out.println("\n\nArray [ " + id+"] : "+arr[id]+"\n\n\t\t");
        	         
        	  }
        	  out.print(Arrays.toString(arr));      
        	  ServletContext context = getServletContext();
        	  context.setAttribute("arr", arr);
        	  
        	
 		}
		catch(Exception e)
		{
			System.out.println("\n\n\t\tERROR IN CREATING CONNECTION \n\n\t\t");
			System.out.println(e);
		}
		finally
		{
			try
			{
				if(con != null)
				con.close();
			}
			catch(Exception e)
			{
				System.out.println("\n\n\t\tERROR IN CLOSING CONNECTION \n\n\t\t");
			}
		}*/
		
		
		Connection con = null;
		Statement st = null;
		int x;
		int count=-1;
		int id=0, temp, humidity;
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");  
			
			System.out.println("Connecting to database...");
			
        	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/weathero","root","");
			
        	System.out.println("\n\n\t\tCONNECTION  CREATED\n\n\t\t");
        	
        	st = con.createStatement();
        	
        	
        	String sql = "SELECT id, temperature, humidity FROM historic";
        	
        	ResultSet rs = st.executeQuery(sql);
        
        	rs.last();
        	int size = rs.getRow();
        	rs.beforeFirst();
        	System.out.println(" \n\n\n\n\t\tRs = "+size);
        	int arr[] = new int[size];
        	  while(rs.next()){
        		  	
        		  	count++;
        	         //Retrieve by column name
        	          id  = rs.getInt("id");
        	          temp = rs.getInt("temperature");
        	          humidity = rs.getInt("humidity");
        	        // String date = rs.getString("date");
        	         arr[count]=humidity;
        	         
        	         //Display values
        	       //  System.out.print("ID: " + id);
        	       //  System.out.print(", Temperature: " + temp);
        	       //  System.out.print(", Humidity: " + humidity);
        	       //  System.out.println("\n\nArray [ " + id+"] : "+arr[id]+"\n\n\t\t");
        	  }
        	  out.print(Arrays.toString(arr));  
        	 // ArrayList arrayList = new ArrayList(Arrays.asList(arr));
        	  JSONArray json = (new JSONArray(Arrays.asList(arr)));
				System.out.println(json+"\n\n\n\n");        	  
				System.out.println( "HUMIDITY = " +Arrays.toString(arr)+"\n\n\n\n");
		}
		catch(Exception e)
		{
			System.out.println("\n\n\t\tERROR IN CREATING CONNECTION \n\n\t\t");
			System.out.println(e);
		}
		finally
		{
			try
			{
				if(con != null)
				con.close();
			}
			catch(Exception e)
			{
				System.out.println("\n\n\t\tERROR IN CLOSING CONNECTION \n\n\t\t");
			}
		}
        	   
	
	}

}
