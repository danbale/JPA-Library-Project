<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	final String contextPath = request.getContextPath();
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://getbootstrap.com/examples/carousel/carousel.css" rel="stylesheet">
	<meta charset="UTF-8">
</head>

    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="http://thenextweb.com/wp-content/blogs.dir/1/files/2015/03/computer-laptop-work-office.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Users</h1>
              <p><a class="btn btn-md btn-default" href="<c:url value="/User/List"/>" role="button">Go to User List</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="http://cdn-media-4.lifehack.org/wp-content/files/2015/01/HNCK3988-1300x867.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Carts</h1>
              <p><a class="btn btn-md btn-default" href="<c:url value="/Cart/List"/>" role="button">Go to Cart List</a></p>
            </div>
          </div>
        </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
 </body>
</html>