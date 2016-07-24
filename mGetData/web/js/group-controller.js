app.controller('UserGroupCtrl', function($rootScope, $scope, UserGroupService){
	$scope.groups = UserGroupService.$list();
    $scope.sortBy = function(propertyName) {
        $scope.reverse = !$scope.reverse;
        $scope.propertyName = propertyName;
    }
	$scope.isSelected = function(groups) {
		return groups.some(function (item){
			return item.selected;
		});
	};
	$scope.save = function(group){
        UserGroupService.$save(group).then(function(data){
            $scope.groups = data;
            delete $scope.group;
            $scope.groupForm.$setPristine();
        });
	}
	$scope.delete = function(groups){
            UserGroupService.$delete(groups).then(function(data){
               $scope.groups = data; 
            });
		};
    $scope.edit = function(index, group){
        $scope.group = angular.copy(group);
        $scope.group.index = index;
    }
});