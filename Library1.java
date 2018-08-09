import javax.servlet.*;
import javax.servlet.http.*;

import p1.DB;
import java.util.Date;
import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;

public class Library1 extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String email=req.getParameter("e1");
		String password=req.getParameter("e2");
		String confirmpassword=req.getParameter("e3");
		System.out.println(email);
		SimpleDateFormat s2=new SimpleDateFormat("dd/MM/yyyy");
		Date date=new Date();
		System.out.println(s2.format(date));
		String dd = (String)s2.format(date);
		try
		{
	
		Connection c = DB.getConn();
Statement s = c.createStatement();
String  s1="insert into person values(SEQ1.NEXTVAL,'"+email+"','"+password+"',s2.format(date),s2.format(date))";
int x=s.executeUpdate("insert into person values(SEQ1.NEXTVAL,'"+email+"','"+password+"','"+dd+"','"+dd+"')");
//out.println(s1);
//ResultSet rs=s.executeQuery(s1);
//if(rs.next())
out.println("Registration successfully");
//else
//out.println("User is InValid");
}catch(Exception e){out.println(e);}     

	
	}
	
}