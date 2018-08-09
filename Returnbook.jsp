 <%@ page import="java.sql.*"%>
 <%@ page import="p1.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%

		response.setContentType("text/html");
		String booknumber=request.getParameter("book-number-return");
		String studentid=request.getParameter("student-id-return");
		String isreturned="0";
		
		
		try
		{

			Connection c = DB.getConn();
			Statement s = c.createStatement();
			

			String  s1= "select book_number , student_id from mapping where book_number='"+booknumber+"' and student_id='"+studentid+"'";
			
			ResultSet rs=s.executeQuery(s1);
			if(rs.next())
			{
				out.println("record exist");
				String s2 ="update mapping set is_returned=1 where book_number='"+booknumber+"' and is_returned='"+isreturned+"'";
				int x1=s.executeUpdate(s2);
				if(x1==1)
				out.println(" updated successfully ");
				else
				out.println(" not updated");
			}
			else
			
				out.println("record  does not exist");	
%>
<body>

	<%
			}catch(Exception e){System.out.println(e);}     %>

</body>



</html>

