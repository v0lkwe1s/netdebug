app.controller( 'UserCtrl', function($rootScope, $location, $scope, UserService, UserGroupService){
    $rootScope.activetab = $location.path();
    $scope.users = UserService.$list();
	$scope.groups = UserGroupService.$list();
    $scope.sortBy = function(propertyName) {
        $scope.reverse = !$scope.reverse;
        $scope.propertyName = propertyName;
    }
	$scope.isSelected = function(users) {
		return users.some(function (item){
			return item.selected;
		});
	};
	$scope.save = function(user){
        UserService.$save(user).then(function(data){
            $scope.users = data;
            delete $scope.user;
            $scope.userForm.$setPristine();
        });
	}
	$scope.delete = function(users){
            UserService.$delete(users).then(function(data){
               $scope.users = data; 
            });
		};
    $scope.edit = function(index, user){
        $scope.user = angular.copy(user);
        $scope.user.index = index;
    }
});