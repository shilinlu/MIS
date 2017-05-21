<%-- 
    Document   : searchActors
    Created on : Apr 15, 2017, 6:18:11 PM
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
    <center> <h1>Search Results</h1> </center>
    <table>        
       <tr>
            <th><h2>Actor ID</h2></th>
            <th><h2>Actor Picture</h2></th>
            <th><h2>Actor Name</h2></th>
            
       </tr> 
       <c:forEach var="Actor" items="${query}">
        <tr>
            
            <th><h3>${Actor.id}</h3> </th>
            <th>
                <form method="POST" action="getActor.htm">
                <input type="hidden" name="query" value=${Actor.id}>
                <input type="image" src ="${Actor.actorPicture}" height="300" width="260"/>
                </form>
            </th>
            <th><h3> ${Actor.name} </h3></th>    
        </tr>
       </c:forEach>
    </table>      
    </body>
</html>
