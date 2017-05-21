<%-- 
    Document   : login
    Created on : Apr 14, 2017, 6:25:03 PM
    Author     : shilinlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
    
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css" media="all" />
    <link rel="stylesheet" href="assets/css/login_style.css">
      <div class="freshdesignweb-top">
                <a href="index.htm">Home</a>
                <div class="clr"></div>
      </div><!--/ freshdesignweb top bar -->
</head>
         
<body>
  
  <div class="login-page">
  
  <div class="form">
        <form method="POST" action="loggedInIndex.htm" id="contactform" class="login-form"> 
            <input type="text" name="userName" placeholder="username"/>
            <input type="password" name="password" placeholder="password"/>
            <input type="submit" class="buttom" name="submit" id="submit" tabindex="5" value="Login" >
            <p class="message"><b>Not registered?</b> <a href="Register.htm"><b>Create an account</b></a></p>
           
        
        </form>
  </div>
 </div>
  

</body>
</html>

