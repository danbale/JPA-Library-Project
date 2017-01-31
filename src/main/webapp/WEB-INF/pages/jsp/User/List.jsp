
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div data-ng-app="MyApp">
<div data-ng-controller = "homeAppController" data-ng-init="userListt()">
	<h3 style="color: blue; font-family: sans-serif;">User List:</h3>
		
	<a href="<c:url value="/User/create?status="/>">Add User</a>
	<a href="<c:url value="/User/home"/>">Return to Index</a>
	<br/><br/>

	<table class ="table">
				<thead>
					<tr>
						<th>Username</th>
						<th>Name</th>
						<th>Role</th>
						<th>Active</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<tr data-ng-repeat="user in userList">
					<td data-ng-bind="user.username" ></td>
					<td data-ng-bind="user.name"></td>
					<td data-ng-bind="user.role.description"></td>
					<td data-ng-bind="user.status"></td>
					<td data-ng-show="user.role.description!='Admin'">Delete</td>
				</tr>
				</tbody>
	</table>
				<div id="custom-search-form" class="form-search form-horizontal pull-left">
                <div class="input-append span12">
                    <input  data-ng-model="searchU" type="text" class="search-query" placeholder="Search">
                    <button data-ng-click="searchUsers()" class="btn"><i class="icon-search"></i></button>
                </div>
                <div>
                	{{resultList}}
                </div>
            </div>
	</div>
	</div>