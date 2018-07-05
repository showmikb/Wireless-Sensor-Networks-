package ardno;
import java.sql.*;
public class Dbutil {

	static Connection cn=null;
	static Statement st=null;
	static PreparedStatement pst=null;
	static ResultSet rs=null;
	
	
	public static Connection getConnection(){
		String url="jdbc:mysql://localhost:3306/weathero";
		String username="root";
		String password="";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cn;
	}
	
	public static Statement getStatement(){
		try {
			st=cn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return st;
	}
	
	public static PreparedStatement getPreparedStatement(String sql){
		try {
			pst=cn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pst;
	}
	public static void releaseResources(){
		
			try {
				if(rs!=null)
				rs.close();
				if(cn!=null)
					cn.close();
				if(st!=null)
					st.close();
				if(pst!=null)
					pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	}
}
