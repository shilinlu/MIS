<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Shop Homepage - Start Bootstrap Template</title>

        <!-- Bootstrap Core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="assets/css/main.css" rel="stylesheet" type="text/css">

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
                    <a class="navbar-brand" href="#">Fandango 2.0</a>
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
                            <a href="newReleases.htm">
                                NEW RELEASES
                            </a>
                            
                           
                        </li>
                        <li>
                            <a href="movieTimes.html">
                                MOVIE TIMES + TICKETS
                            </a>
                        </li>
                        <li >
                            <a href="#">
                                MOVIE NEWS
                            </a>
                        </li>
                         <li >

                             <a href="Register.htm">
                                REGISTER
                            </a>
                        </li>
			<li>
                            <a href=index.htm>
                                LOGOUT
                            </a>
			</li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
      </head>

      <body>
        <div class="container">

            <div class="row">

                <div class="col-md-12">

                    <div class="row carousel-holder">

                        <div class="col-md-12">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img class="slide-image" src="assets/img/sample1.jpg" alt="">
                                    </div>
                                    <div class="item">
                                        <img class="slide-image" src="assets/img/sample2.jpg" alt="">
                                    </div>
                                    <div class="item">
                                        <img class="slide-image" src="assets/img/sample3.jpg" alt="">
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>

                            </div>
                        </div>

                    </div>

                    <!-- Buy Movie Tickets -->
                    <div style="background-color: #000000;">
                        <div class="container">
                            <div class="row">
                                <br>
                                <h3 style="color: white;margin: 0 0 0 0; text-align: center;">Buy Movie Tickets <a href="#">(See All Movies)</a></h3>
                                <br>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster1.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$24.99</h4>
                                    <h4><a href="trailer.html">First Product</a>
                                    </h4>
                                    <p>See more snippets like this online store item at.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">15 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster2.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$64.99</h4>
                                    <h4><a href="trailer.html">Second Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">12 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster3.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$74.99</h4>
                                    <h4><a href="trailer.html">Third Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">31 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster4.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$84.99</h4>
                                    <h4><a href="trailer.html">Fourth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">6 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster5.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$94.99</h4>
                                    <h4><a href="trailer.html">Fifth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">18 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster6.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$94.99</h4>
                                    <h4><a href="trailer.html">Fifth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">18 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster7.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$94.99</h4>
                                    <h4><a href="trailer.html">Fifth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">18 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <img src="assets/img/poster8.jpg" alt="">
                                <div class="caption">
                                    <h4 class="pull-right">$94.99</h4>
                                    <h4><a href="trailer.html">Fifth Product</a>
                                    </h4>
                                    <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                                <div class="ratings">
                                    <p class="pull-right">18 reviews</p>
                                    <p>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Offers -->
                    <div style="background-color: #000000;">
                        <div class="container">
                            <div class="row">
                                <br>
                                <h3 style="color: white;margin: 0 0 0 0; text-align: center;">Offers</h3>
                                <br>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster1.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$24.99</h4>
                                  <h4><a href="#">First Product</a>
                                  </h4>
                                  <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">15 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster2.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$64.99</h4>
                                  <h4><a href="#">Second Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">12 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster3.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$74.99</h4>
                                  <h4><a href="#">Third Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">31 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster4.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$84.99</h4>
                                  <h4><a href="#">Fourth Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">6 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster5.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$94.99</h4>
                                  <h4><a href="#">Fifth Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">18 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster6.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$94.99</h4>
                                  <h4><a href="#">Fifth Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">18 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/poster7.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$94.99</h4>
                                  <h4><a href="#">Fifth Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">18 reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/best_prof.jpeg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$0.00</h4>
                                  <h4><a href="#">Rob Kelly</a>
                                  </h4>
                                  <p>Sign up for 308 with the best professor at SBU.</p>
                              </div>
                              <div class="ratings">
                                  <p class="pull-right">9999+ reviews</p>
                                  <p>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star"></span>
                                      <span class="glyphicon glyphicon-star-empty"></span>
                                  </p>
                              </div>
                          </div>
                      </div>

                    </div>

                </div>

            </div>

        </div>
        <!-- /.container -->



        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

    <footer class="">

        <div>
            <div class="footer-nav panel-footer">
                <div class="row">
                    <div class="col-md-4 col-sm-12 columns">
                        <h3 class="footer-nav-header">Experience + Explore</h3>
                        <ul class="footer-nav-list">
                            <li><a class="light" href="http://www.fandango.com/moviesintheaters">Movies In Theaters</a></li>
                            <li><a class="light" href="http://www.fandango.com/famous-actors-and-actresses">Movie Actors and Actresses</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-12 columns">
                        <h3 class="footer-nav-header">Features + Guides</h3>
                        <ul class="footer-nav-list">
                            <li><a class="light" href="http://www.fandango.com/movie-news">Movie News</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-12 columns">
                        <h3 class="footer-nav-header">Videos</h3>
                        <ul class="footer-nav-list">

                            <li><a class="light" href="trailer.html">Movie Trailers</a></li>

                            <li><a class="light" href="admin.html">Manager Page</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>



        <div class="">
            <div class="row">
                <div class="col-lg-offset-2 col-lg-4 col-md-offset-4 col-md-4 col-sm-12 columns">
                    <h4 class="heading-style-2 heading-size-s">Get Updates On All Things Movies:</h4>
                    <div class="">
                        <label class="" for="e">Sign up for FanMail</label>
                        <input id="" class="" type="email" placeholder="Enter Email Address">
                        <a id="" class="btn">Submit</a>
                        <div class="error-msg" id=""></div>
                    </div>
                    <h3 id="" class="hide">
                        THANKS FOR SIGNING UP!
                    </h3>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 columns">
                    <h4 class="heading-style-2 heading-size-s">Follow Us</h4>
                    <span itemscope="" itemtype="#">
                        <link itemprop="url" href="#">
                        <a itemprop="sameAs" href="#" target="_blank" class="icon-social icon-facebook" rel="nofollow">Facebook</a>
                        <a itemprop="sameAs" href="#" target="_blank" class="icon-social icon-twitter" rel="nofollow">Twitter</a>
                        <a itemprop="sameAs" href="#" target="_blank" class="icon-social icon-instagram" rel="nofollow">Instagram</a>
                        <a itemprop="sameAs" href="#" target="_blank" class="icon-social icon-googleplus" rel="nofollow">Google+</a>
                        <a itemprop="sameAs" href="#" target="_blank" class="icon-social icon-tumblr" rel="nofollow">Tumblr</a>
                        <a itemprop="sameAs" href="#" target="_blank" class="icon-social icon-youtube" rel="nofollow">Youtube</a>
                    </span>
                </div>

            </div>
        </div>

        <div class="">
            <div class="row">
                <div class="">
                    Copyright © 2017 Dogwood. All rights reserved. Your Ticket to the Movies. Your Personal Box Office.
                </div>
            </div>
        </div>

        <!-- needed for nano rep widget -->
        <div class="" id=""></div>
    </footer>
</html>
