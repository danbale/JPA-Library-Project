<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<tiles:importAttribute name="javascripts"/>
<tiles:importAttribute name="stylesheets"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>

  	
	     <c:forEach var="script" items="${javascripts}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>
    <body data-ng-app="homeApp">
    <c:forEach var="css" items="${stylesheets}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
</head>

<table width = "100%"> 
	<tr>
		<td colspan="2">
		<tiles:insertAttribute name="header" />
		 </td>

	<tr>
		<td>
		<tiles:insertAttribute name="menu" />
		 </td>
		 </tr>
	<tr>
		<td>
			<tiles:insertAttribute name="body" />
		 </td>
		 </tr>
		 
		 	<tr>
		<td>
		<tiles:insertAttribute name="footer" />
		 </td>
		 </tr>
 </table>

</body>
</html>