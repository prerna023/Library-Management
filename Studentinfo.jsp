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
		String id=request.getParameter("student-id-info");
		String isreturned="0";
		try
		{

			Connection c = DB.getConn();
			Statement s = c.createStatement();
			Statement ss = c.createStatement();

			String  s1= "select * from student where student_id='"+id+"'";
			String  s2= "select * from mapping where student_id='"+id+"' and is_returned='"+isreturned+"'";
			
			ResultSet rs=s.executeQuery(s1);
			ResultSet rs1=ss.executeQuery(s2);
			while(rs.next()){
			%>
			<body>
			<table>
<tr>
<th>student_id</th>
<td> <%out.println(rs.getString(2));%> </td>
</tr>
<tr>
<th>first_name</th>
<td> <%out.println(rs.getString(3)); %> </td>
</tr>
<tr>
<th>middle_name</th>
<td> <%out.println(rs.getString(4)); %> </td>
</tr>
<tr>
<th>last_name</th>
<td> <%out.println(rs.getString(5)); %> </td>
</tr>
<tr>
<th>semester</th>
<td> <%out.println(rs.getString(6));%> </td>
</tr>
<tr>
<th>branch</th>
<td> <%out.println(rs.getString(7)); %> </td>
</tr>
<tr>
<th>department</th>
<td> <%out.println(rs.getString(8)); %> </td>
</tr>
</table><%} %>
<table>
<tr><%if(isreturned=="0") { %>
<th>book_number</th>
<td> <%

int count=0;
while(rs1.next()){
	
	
	count++;
	out.println(rs1.getString(3));
	
}
out.println(count);
}
else
	out.println("no bookid exist for this student");

%> </td>
</tr>
</table>
	<%
			}catch(Exception e){System.out.println(e);}     %>

</body>



</html>