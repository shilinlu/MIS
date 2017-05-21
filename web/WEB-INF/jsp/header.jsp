<%-- 
    Document   : header
    Created on : Apr 5, 2017, 8:44:28 PM
    Author     : shilinlu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Fandango</title>

        <!-- Bootstrap Core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="assets/css/main.css" rel="stylesheet" type="text/css">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Custom CSS -->
        <link href="assets/css/shop-homepage.css" rel="stylesheet">


        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.htm">Fandango 2.0</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="nav navbar-nav">
                        <li>
                            <form method="POST" action="searchMovies.htm" class="navbar-form navbar-left">
                               
                                <input type="text" class="form-control" name="query" placeholder="Movies" size="25"><br>
                             
                            </form>
           
                        </li>
                        <li>
                            <form method="POST" action="searchActors.htm" class="navbar-form navbar-left">
                               
                                <input type="text" class="form-control" name="query" placeholder="Actors" size="25"><br>
                             
                            </form>
                        </li>
                        <li>
                            <a href="newReleases.htm">
                                NEW RELEASES
                            </a>
                        </li>
                         <c:if test="${sessionScope.currentUser != null}">
                         <li >
                            <a href=Support.htm>
                                SUPPORT
                            </a>
                        </li>
                         </c:if>
                        
                    <c:if test="${sessionScope.currentUser == null}">
                        <li >
                            <a href=Register.htm>
                                REGISTER
                            </a>
                        </li>
                     </c:if>
                    
                    <c:if test="${sessionScope.currentUser == null}">    
                        <li >
                            <a href=login.htm>
                                LOGIN
                            </a> 
                        </li>
                    </c:if>   
                        <li >
                            <a href="#">
                                ${sessionScope.currentUser}
                            </a>
                        </li>
                    <c:if test="${sessionScope.currentUser != null}">
                        <li >
                            <a href=logout.htm>
                                LOGOUT
                            </a> 
                        </li>
                    </c:if>
                    <c:if test="${login==false}">
                        <script>
                            alert("Wrong password or account does not exist");
                        </script>
                    </c:if> 
                    
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
      </head>
   
</html>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var login = $('#loggedInIndex');
        if (${not empty currentUser}) {
            login.html('<a href="logout.htm"><button type="button" class="btn btn-danger btn-sm">Logout</button></a>&nbsp;&nbsp;');
        } else {
            login.html('\
                    <form method="POST" action="login.htm">\n\
                    <input type="email" class="form-control input-sm" name="email" placeholder="E-mail">\n\
                    <input type="password" class="form-control input-sm" name="password" placeholder="Password">\n\
                    <button type="submit" class="btn btn-danger btn-sm">Login</button>\n\
                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#register">Register</button>&nbsp;&nbsp;\n\
                    </form>');
        }
    });
</script>