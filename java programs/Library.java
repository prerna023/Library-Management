import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Library extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String email=req.getParameter("e1");
		String password=req.getParameter("e2");
		System.out.println(email);
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
		Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prerna");
Statement s = c.createStatement();
String  s1="select * from person  where   username='"+email+"'  and password='"+password+"'";
//out.println(s1);
ResultSet rs=s.executeQuery(s1);
if(rs.next())
out.println("User is Valid");
else
out.println("User is InValid");
}catch(Exception e){out.println(e);}     

	
	}
	
}