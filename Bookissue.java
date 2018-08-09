import javax.servlet.*;
import javax.servlet.http.*;

import p1.DB;
import java.util.Date;
import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;


public class Bookissue extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String id=req.getParameter("student-id");
		
		
		String booknumber=req.getParameter("book_number");
		String isreturned="0";
		SimpleDateFormat s2=new SimpleDateFormat("dd/MM/yyyy");
		Date date=new Date();
		System.out.println(s2.format(date));
		String dd = (String)s2.format(date);
		try
		{

			Connection c = DB.getConn();
			Statement s = c.createStatement();
			String a = "select * from student where student_id= '"+id+"'";
			
			ResultSet rs1=s.executeQuery(a);
			
			if(rs1.next())
			{
				out.println("student_id exist");
				String b = "select * from book where book_number='"+booknumber+"'";

				ResultSet rs2=s.executeQuery(b);
				if(rs2.next())
				{
					out.println("book_id exist");
				
				String d ="select student_id from mapping where book_number='"+booknumber+"' and is_returned='"+isreturned+"'";
				
				ResultSet rs3=s.executeQuery(d);
				if(rs3.next())
				{
					out.println("book_id  not available");
				
				}
				
				else
				{
					out.println("book_id  available");
					String  s1="insert into mapping values(SEQ2.NEXTVAL,'"+id+"','"+booknumber+"','"+dd+"','"+dd+"','"+isreturned+"')";

					
					int x1=s.executeUpdate(s1);
					if(x1==1)
					out.println("Added successfully");
					else
					out.println("not added");
						}
				
				}
			else
			out.println("book_id not exit");
			}
			else
			{
				out.println("student_id not exist");
				
			}
			
			
			
		}
			catch(Exception e){out.println(e);}     

				
				}
				
			}
			 
			
			
