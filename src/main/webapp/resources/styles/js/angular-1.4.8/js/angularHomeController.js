myApp.controller('homeAppController', function ($scope,userService) {
  $scope.userList = {};
  $scope.user = {};
  $scope.userListt=function(){
		  userService.userList()
	      .then(
		      function(d  ) {
		    	  $scope.userList = angular.copy(d);
		    	  
		      },
		      function(errResponse){
		          console.error('Error while fetching Users');
		      }
	  );
  }
  
  $scope.searchUsers=function(){
	  alert("")
	  userService.searchUser($scope.searchU)
	  .then(
			  function(d){
				  $scope.userList = angular.copy(d);
			  },
			  function(errResponse){
				  console.error('Error');
			  });
  }

 
});
myApp.factory('userService',function($http,$q){
	var service={
			userList:userList,
			searchUser:searchUser
	};
	var URL='http://localhost:8080/jpaproject/User'
	
		
	function userList(){
		var deferred = $q.defer();
        $http.get(URL+'/ListUsers')
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error(errResponse);
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
	}
	
	function searchUser(name){
		var deferred = $q.defer();
		        $http.post(URL + '/find',name)
            .then(
            function (response) {
                deferred.resolve(response.data);
                $scope.resultList = response.data;
                alert(response)
            },
            function(errResponse){
            	if (errResponse.status == 409) {
					alert("User Duplicated")
				}
                console.error(errResponse);
                deferred.reject(errResponse);
                
            }
        );
        return deferred.promise;
	}
	
	
	return service;
});
