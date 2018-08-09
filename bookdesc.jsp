 <%@ page import="java.sql.*"%>
 <%@ page import="p1.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="icon"
          href="./assets/images/books.png">
    <link rel="stylesheet"
          href="./assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="./assets/css/main.css">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="./assets/js/jquery.js"></script>
    <script src="assets/js/loadHtml.js"></script>
</head>
<body>
<div id="navbar"></div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <div id="side-bar">
                <div id="book-image">
                    <img src="./assets/images/bodybackground.jpg" alt="..." class="img-thumbnail">
                </div>
                
                
                               
                <div id="book-info">
                <form   method="post" action="">
                <%
                 String ddd = request.getParameter("hh");
             response.setContentType("text/html");
            
System.out.println(ddd);
             	Connection c = DB.getConn();
             	Statement s = c.createStatement();
             	
             	String a = "select * from book where author = '"+ddd+"'";
             	ResultSet rs1=s.executeQuery(a);
             	while(rs1.next()){
             %>
                    <ul class="list-group">

                    
                        <li class="list-group-item text-center font-weight-bold">Book Title:<%out.println(rs1.getString(3));%></li>
                         <form   method="post" action="">
                         <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                               Book Number:<%out.println(rs1.getString(2));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
         				    Edition:<%out.println(rs1.getString(4));%>
                            </div>
                        </li>
                        
                        
                        
                        
                        
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                                                  
                                Author:<%out.println(rs1.getString(5));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                                Creator:<%out.println(rs1.getString(6));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                              Editor:<%out.println(rs1.getString(7));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                                Genre:<%out.println(rs1.getString(8));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                                Language:<%out.println(rs1.getString(9));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                                Publication:<%out.println(rs1.getString(10));%>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="text-left font-weight-bold">
                                Total pages:<%out.println(rs1.getString(11));%>
                            </div>
                        </li>
                    </ul>
                     </form>
                </div>
            </div>
             
        </div>
        <div class="col-md-8">
            <div id="book-description">
                <div class="book-heading display-4">
                    Description
                </div>
                <div class="book-body">
                    <dl class="row">
                        <dt class="col-sm-3">About the Book:</dt>
                        <dd class="col-sm-9 text-justify text-muted">
                            <%out.println(rs1.getString(12));}%>
                            
                            </dd>

                        <dt class="col-sm-3">About the Author</dt>
                        <dd class="col-sm-9 text-justify text-muted">"A simple girl from Surat, Savi Sharma is the co-founder of the motivational media blog Life & People. Everyone Has a Story is her debut novel inspired by stories around her.</dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="./assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>