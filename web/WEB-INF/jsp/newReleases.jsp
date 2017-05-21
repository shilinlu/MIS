<%-- 
    Document   : newReleases
    Created on : Apr 9, 2017, 9:29:14 PM
    Author     : shilinlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<style>.star {
  font-size: 50px;
  color:red;
  
}
</style>

<html>
    <head>
        <jsp:include page="header.jsp" />
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
        <link href="assets/css/tables.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
        <center> <h1>New Releases</h1> </center>
       <table>        
       <tr>
            <th><h2>Movie Name</h2></th>
            <th><h2>Movie Poster</h2></th>
            <th><h2>Movie ID</h2></th>
            <th><h2>Movie Overview</h2></th>
            <th><h2>Movie Release</h2></th>
       </tr> 
       
       <c:forEach var="Movie" items="${query}">
        <tr>
            
            <th><h3>${Movie.movieName}</h3></th> 
            <th><img src ="${Movie.moviePoster}" height="300" width="260"/></th>
            <th><form method="POST" action="getMovie.htm"><h3>${Movie.movieID}</h3><input type="hidden" name="query" value=${Movie.movieID}><input type="submit" value="More Info"></form> 
            <c:if test="${sessionScope.currentUser != null}"> 
            <div>
                <script>$(".star.glyphicon").click(function() {
                $(this).toggleClass("glyphicon-star glyphicon-star-empty");
                });</script>
                <span class="star glyphicon glyphicon-star-empty"></span>
            </div>
            </c:if>
            </th>
            <th><h3>  ${Movie.movieOverview}</h3> </th>
            <th> <h3> ${Movie.releaseDate} </h3></th>
        </tr>
       </c:forEach>
      </table>      
    </body>
</html>
