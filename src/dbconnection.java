import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class dbconnection {
	public static Statement st=null;
	public static Statement myconnection(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/dell","root","root");
			st=con.createStatement();
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return st;
	}

}

