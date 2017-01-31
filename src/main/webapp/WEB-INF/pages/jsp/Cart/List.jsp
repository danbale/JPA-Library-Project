
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div data-ng-controller="cartAppController" data-ng-init="cartListt()">
	<div class="panel panel-default">
		<div class="panel-heading">
			<ol class="breadcrumb">
				<li><a href="<c:url value="/Cart/home"/>">Home</a></li>
				<li class="active">User List</li>
			</ol>
		</div>
		<div class="panel-body">
			<table class="table">
				<thead>
					<tr>
						<th>Cart Id</th>
						<th>Lines Amount</th>
						<th>Shipping Amount</th>
						<th>Cart Amount</th>
						<th>Ship To</th>
						<th>Status</th>
						<th>Created Date</th>
						<th>Modified Date</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tr data-ng-repeat="cart in cartList">
					<td ><a data-ng-bind="cart.id.id | number:2" data-ng-click="saveCartId(cart.id.id)" data-ng-href="<c:url value="/Cart/editView"/>"></a></td>
					<td data-ng-bind="cart.cartDetails.linesAmount | number:2"></td>
					<td data-ng-bind="cart.cartDetails.shippingAmount | number:2"></td>
					<td data-ng-bind="cart.cartDetails.cartAmount | number:2"></td>
					<td data-ng-bind="cart.cartDetails.shipTo.name "></td>
					<td data-ng-bind="cart.cartDetails.status.description"></td>
					<td data-ng-bind="cart.audit.createDate | date: 'yyyy-MM-dd HH:mm:ss'"></td>
					<td data-ng-bind="cart.audit.updateDate | date: 'yyyy-MM-dd HH:mm:ss'"></td>
					<td data-ng-show="cart.cartDetails.status.id != 1300"><button  class="btn btn-info" data-ng-click="" data-ng-disabled="myForm.$invalid">Delete</button></td>
				</tr>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>
</div>
