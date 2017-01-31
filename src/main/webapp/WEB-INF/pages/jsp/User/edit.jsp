
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Users</title>
<meta charset="UTF-8">
</head>
<body style="font-family: sans-serif;" data-ng-app="userApp">
<h2></h2>
	
	<div data-ng-controller ="userAppController">
	
	 <form:form method="post" action="/jpaproject/User/update" modelAttribute="user" >
	 <br>
	  <h3 style="color: blue; font-family: sans-serif;">{{hello}}</h3>
		<table class ="table">
		
			<tr>
				<td width="8%">Username</td>
				<td width="10%"><input type="text" name="username"
					value="${map.users.username}" readonly="readonly"></td>
			</tr>
			<tr>
				<td width="8%">Password:*</td>
				<td width="10%"><input type="text" name="password" value=""
					></td>
			</tr>
			<tr>
				<td>Name:*</td>
				<td><input type="text" name="name" value="${map.users.name}">
				</td>
			</tr>
			<tr>
				<td>Active:*</td>
				<td><select name="Status">
						<option value="0">- Select -</option>
						<c:forEach var="listStatus" items="${map.listStatus}">
							<option value="${listStatus}"
								<c:if test="${listStatus eq map.users.status}">selected</c:if>>${listStatus}</option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td width="10%">User role:*</td>
				<td width="25%"><select name="userRole">
						<option value="0">- Select -</option>
						<c:forEach var="role" items="${map.userRole}">
							<option value="${role.user_roleid}"
								<c:if test="${role.description eq map.users.role.description}">selected</c:if>>${role.description}</option>
						</c:forEach>
				</select></td>
			</tr>


		</table>

		<br> <input type="submit" name="update" value="Update">
	  </form:form>
	 
	  </div>
	
	<br>
	<div><c:out value="${map.status}"/></div>
	

	<br>
	<a href="<c:url value="/User/List?subroot=User"/>">Return to List</a>
</body>
</html>