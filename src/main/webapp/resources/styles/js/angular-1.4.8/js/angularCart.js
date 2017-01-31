 myApp.controller('cartAppController', function ($scope,cartService){
		  $scope.cartList = {};
		  $scope.cartListt=function(){
			  cartService.cartList()
			  .then(
					  function(d) {
						  $scope.cartList = angular.copy(d);
					  },
					  function(errResponse){
						  console.error('Error while fetching Users');
					  }
			  );
		  }  
		  
		  
	  });
 
myApp.factory('cartService',function($http,$q){
		var service={
				cartList:cartList				
		};
		
		var URL='http://localhost:8080/jpaproject/Cart'
			function cartList(){
				var deferred = $q.defer();
		        $http.get(URL+'/ListCarts')
		            .then(
		            function (response) {
		                deferred.resolve(response.data);
		            },
		            function(errResponse){
		                console.error('Error while fetching Users');
		                deferred.reject(errResponse);
		            }
		        );
		        return deferred.promise;
			}
		
		
		return service;
 });