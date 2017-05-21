<%-- 
    Document   : Register
    Created on : Apr 9, 2017, 10:06:14 PM
    Author     : shilinlu
--%>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Demo Beautiful Registration Form with HTML5 and CSS3</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css" media="all" />
</head>
<body>
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                
                
                <a href="index.htm" >Home</a>
                
                
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<b>REGISTER</b>
            </header>       
     
      <div  class="form">
    		<form method="POST" action="registerStatus.htm" id="contactform"> 
    			 <p class="contact"><label for="username">Create a username</label></p> 
    			<input type="username" name="username" placeholder="username" required="" tabindex="2" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input type="email" name="email" placeholder="example@domain.com" required="" type="email"> 
                
                        <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="password" required=""> 
                               
                        <p class="contact"><label for="phone">Mobile phone</label></p> 
                        <input type="text" name="phone" placeholder="phone number" required="" type="text"> <br>
            
                        <input type="submit" class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" > 	 
                </form> 
      </div>      
</div>

</body>
</html>

