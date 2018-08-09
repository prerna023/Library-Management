package p1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	public static Connection c=null;
	 public static Connection getConn()
	 {
		 try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","library","oracle");
			System.out.print("created");
		 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return c;
	 }
	public static void main(String[] args) {
	 Connection c = DB.getConn();

	}

}
