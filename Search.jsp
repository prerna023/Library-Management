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
        <div class="col-md-2"></div>
        <div class="col-md-8">

             <form id="search-form" class="form-inline" action="Search.jsp">
             <div class="form-group">
                    <input type="text" class="form-control" id="search-input" placeholder="Search here" name="search-input">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
            <div class="search-result">
                <div class="container-fluid jumbotron">
                    <h3 class="text-muted">
                        Search results
                    </h3>
                    <div class="row">
                    
                            
             <%
             response.setContentType("text/html");
             String searchbook =request.getParameter("search-input");
            
             	Connection c = DB.getConn();
             	Statement s = c.createStatement();
             	
             	
             	String b = "select * from book where title= '"+searchbook+"'";
             	ResultSet rs1=s.executeQuery(b);
             	while(rs1.next()){ 
             %>
             
                        <div class="col-md-6">
             <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="./assets/images/bodybackground.jpg" alt="Card image cap">
                        <div class="card-body">
                
                            <h5 class="card-title"><%out.println(rs1.getString(3));%> </h5>
                            <p class="card-text"><%out.println(rs1.getString(5)); %></p>
                            <a href="bookdesc.jsp?hh=<%=rs1.getString(5) %>" class="btn btn-primary">More Info</a>
                        </div>
                    </div>
                        </div>
                        <%} %>
                        <!-- <div class="col-md-6">
                            <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="./assets/images/bodybackground.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Book title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">More Info</a>
                        </div>
                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="./assets/images/bodybackground.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Book title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">More Info</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="./assets/images/bodybackground.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Book title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">More Info</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="col-md-2"></div>
    </div>
</div>
<script src="./assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>