<%-- 
    Document   : getMovie
    Created on : Apr 6, 2017, 3:27:32 PM
    Author     : shilinlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  
    <head>
        <jsp:include page="header.jsp" />
        <link href="assets/css/tables.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center> <h1><u>Movie Info</u></h1> </center>   
    <%
    String value=request.getParameter("query");
    
    out.println(value);
    %>
    <h1><center><b> ${query.movieName} </b></center> </h1>
    <h2>  ${query.tagLine} </h2>
    <table>         
       <tr>
            <th><img src ="${query.moviePoster}" height="500" width="400"/></th>
            
            <th><h3>  ${query.movieOverview}</h3> </th>
            
        </tr>
        <tr>
            <th><img src ="${query.backDropPoster}" height="300" width="400"/></th>
            <th> <h3>Release Date: ${query.releaseDate} </h3></th>
        </tr>
        <tr>
            <th> <h3>Box Office: $${query.revenue} </h3></th>
            <th> <h3>Movie Runtime: ${query.runtime} minutes </h3></th>
        </tr>

    </table>      
        
            <center><iframe width="500" height="400" src="https://www.youtube.com/embed/${query.trailer}">
                </iframe> </center>
        
        <center> <h1><u>Cast Info</u></h1> </center>   
    
    <table>        
       <tr>
            <th><h2>Actor Name</h2></th>
            <th><h2>Actor Poster</h2></th>
            <th><h2>Character</h2></th>
            
       </tr> 
       <c:forEach var="Cast" items="${cast}">
        <tr>
            
            <th><h3>${Cast.actorName}</h3></th> 
            <th><img src ="${Cast.actorPicture}" height="400" width="300"/></th>
            
            <th> <h3> ${Cast.character} </h3></th>
        </tr>
       </c:forEach>
    </table>          





</body>
</html>
