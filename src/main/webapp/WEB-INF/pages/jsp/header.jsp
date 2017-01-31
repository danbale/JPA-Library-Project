<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	final String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>JSTL Application</title>
	<meta charset="UTF-8">
</head>
<body style="font-family: sans-serif;" data-ng-app="homeApp" >

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button"href="/jpaproject/User/home" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/jpaproject/User/home" alt="Dispute Bills">Softtek Winter Academy</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class=""><a href="/jpaproject/User/home">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
              	<li class="dropdown-header">Carts</li>
                <li><a href="/jpaproject/Cart/List">Cart List</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Users</li>
                <li><a href="/jpaproject/User/List">User List</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    

</body>
</html>