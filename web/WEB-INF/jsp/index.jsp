<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <jsp:include page="header.jsp" />
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                <h3 style="color: white;margin: 0 0 0 0; text-align: center;">Buy Movie Tickets <a href="FindTheater.htm">(Find Theaters)</a></h3>
                                <br>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">

                        <div class="col-sm-3 col-lg-3 col-md-3">
                            <div class="thumbnail">
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=10749>
                                    <input type="image" src ="assets/img/poster1.jpg"  height="385" width="260"/>
                                </form>
                                <div class="caption">
                     
                                    <h4><a href="#">Romance Movies</a>
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
                                 <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=35>
                                    <input type="image" src ="assets/img/poster2.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    
                                    <h4><a href="#">Comedy Movies</a>
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
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=28>
                                    <input type="image" src ="assets/img/poster3.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    <h4 class="pull-right">$74.99</h4>
                                    <h4><a href="#">Action Movies</a>
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
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=878>
                                    <input type="image" src ="assets/img/poster4.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    
                                    <h4><a href="#">Sci-Fi Movies</a>
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
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=27>
                                    <input type="image" src ="assets/img/poster5.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    
                                    <h4><a href="#">Horror Movies</a>
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
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=53>
                                    <input type="image" src ="assets/img/poster6.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    
                                    <h4><a href="#">Thrillers</a>
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
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=16>
                                    <input type="image" src ="assets/img/poster9.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    
                                    <h4><a href="#">Animated Movies</a>
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
                                <form method="POST" action="MovieGenre.htm">
                                    <input type="hidden" name="genreID" value=9648>
                                    <input type="image" src ="assets/img/poster8.jpg"  height="385" width="260"/>
                                 </form>
                                <div class="caption">
                                    
                                    <h4><a href="#">Mystery Movies</a>
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
                                <h3 style="color: white;margin: 0 0 0 0; text-align: center;">Advertisements</h3>
                                <br>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">

                      <div class="col-sm-3 col-lg-3 col-md-3">
                          <div class="thumbnail">
                              <img src="assets/img/coke.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$24.99</h4>
                                  <h4><a href="#">First Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
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
                              <img src="assets/img/dior.jpg" alt="">
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
                              <img src="assets/img/loreal.jpg" alt="">
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
                              <img src="assets/img/poster7.jpg" alt="">
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
                              <img src="http://www.grayflannelsuit.net/blog/wp-content/uploads/2014/04/celebrity-smoking-ad_paul-hornung-1962-marlboro.jpg" alt="">
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
                              <img src="https://s-media-cache-ak0.pinimg.com/736x/b0/04/f6/b004f667957426241e9fce857b6a822a.jpg" alt="">
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
                              <img src="https://s-media-cache-ak0.pinimg.com/736x/57/1e/24/571e245fb36855a113e311876a92401b.jpg" alt="">
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
                              <img src="assets/img/slimjim.jpg" alt="">
                              <div class="caption">
                                  <h4 class="pull-right">$0.00</h4>
                                  <h4><a href="#">Fifth Product</a>
                                  </h4>
                                  <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
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
                        <h3 class="footer-nav-header">Gift Cards</h3>
                        <ul class="footer-nav-list">
                            <c:if test="${sessionScope.currentUser != null}">
                            <li><a class="light" href="BuyGiftCard.htm">Buy Gift Cards</a></li>
                            </c:if>
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
                        <label class="" for="e">Sign up for Newsletter</label>
                        
                        <p> ${sessionScope.userEmail}</p>
                        <c:if test="${sessionScope.currentUser != null}">
                        <form method="POST" action="SignUpNewsLetter.htm"
                        <input type="hidden" name="userEmail" value=${sessionScope.userEmail}>
                            
                        <input type="submit" class="button"  value="Submit" >
                        
                        <input type="hidden" name="userEmail" value=${sessionScope.userEmail}>
                        </form>
                        </c:if>
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
