<%-- 
    Document   : getActor
    Created on : Apr 15, 2017, 9:33:52 PM
    Author     : shilinlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
        <link href="assets/css/tables.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
        <h1><center><b> ${query.name} </b></center> </h1>
    </head>
    <body>
        <table>        
            <tr> 
                <th><img src ="${query.actorPicture}" height="500" width="400"/></th>
                <th><h3>  ${query.biography}</h3> </th>
            </tr>
        </table>
        <table>        
            <tr>
                <th><h2>Movie Name</h2></th>
                <th><h2>Movie Poster</h2></th>
                <th><h2>Release Date</h2></th>
                <th><h2>Character</h2></th>
                
            </tr> 
            <c:forEach var="Movie" items="${knownFor}">
            <tr>
            
                <th><h3>${Movie.movieName}</h3></th> 
                <th>
                    <form method="POST" action="getMovie.htm">
                    <input type="hidden" name="query" value=${Movie.movieID}>
                    <input type="image" src ="${Movie.moviePoster}" height="300" width="260"/>
                    </form>
                </th>
                <th><h3>${Movie.releaseDate}</h3></th> 
                <th> <h3> ${Movie.movieOverview} </h3></th>
            </tr>
            </c:forEach>
        </table>    
    
    
    
    </body>
</html>
