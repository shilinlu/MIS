<%-- 
    Document   : FindTheater
    Created on : May 10, 2017, 1:55:43 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
        <link href="assets/css/tables.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
    <center> <h1>Movie Theaters</h1> </center>
    <table>        
       <tr>
            <th><h2>Theater Name</h2></th>
            <th><h2>Address</h2></th>
            <th><h2>City</h2></th>
            <th><h2>State</h2></th>
            <th><h2>Country</h2></th>
            <th><h2>Phone</h2></th>
            <th><h2>Website</h2></th>
       </tr> 
       <c:forEach var="Theater" items="${Theaters}">
        <tr>
            <th><form method="POST" action="GetDirection.htm"><h3>${Theater.theaterName}</h3><input type="hidden" name="address" value=${Theater.street}><input type="submit" value="Get Direction"></form> 
            <c:if test="${sessionScope.currentUser != null}"> 
            <div>
                <script>$(".star.glyphicon").click(function() {
                $(this).toggleClass("glyphicon-star glyphicon-star-empty");
                });</script>
                <span class="star glyphicon glyphicon-star-empty"></span>
            </div>
            </c:if>
            </th>
            <th><h3>  ${Theater.street}</h3> </th>
            <th> <h3> ${Theater.city} </h3></th>
            <th> <h3> ${Theater.state} </h3></th>
            <th> <h3> ${Theater.country} </h3></th>
            <th> <h3> ${Theater.phoneNumber} </h3></th>
            <th><h3><a href="${Theater.website} ">Theater Link</a>  </h3></th>
        </tr>
            
       </c:forEach>
    </table> 
    
    </body>
</html>
