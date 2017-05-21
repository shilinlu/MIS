<%-- 
    Document   : registerStatus
    Created on : Apr 11, 2017, 12:53:10 PM
    Author     : shilinlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:if test="${register==true}">
            <h1><center>Account successfully created!</center></h1>
        </c:if>
        <c:if test="${register==false}">
            <h1><center>UserName already taken!</center></h1>
        </c:if>
        
    </head>
    <body>
        <h3>Name: ${account.name}</h3>
        <h3>UserName: ${account.userName}</h3>
        <h3>Password: ${account.password}</h3>
        <h3>Email: ${account.email}</h3>
        <h3>Phone Number: ${account.phoneNumber}</h3>
    </body>
</html>
