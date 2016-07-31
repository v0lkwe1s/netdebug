var app = angular.module('netDebug',['ngRoute']);
app.config(function($routeProvider, $locationProvider){
    $locationProvider.html5Mode({
        enabled: false,
        requireBase: false
    });
    $routeProvider
        .when('/', {
            templateUrl : 'templates/overview.html',
            controller     : 'overviewTab',
        }).otherwise ({ redirectTo: '/' });
});

app.controller('overviewTab', function($rootScope, $http, $scope, $location, $interval){
	$rootScope.activetab = $location.path();
	$interval(function () {
			$http.get("json/config.json").then(function(response) {
				$scope.hostInfo = response.data;
			});
    }, 1000);

    $rootScope.sortBy = function(propertyName) {
			$rootScope.reverse = !$scope.reverse;
			$rootScope.propertyName = propertyName;
    }
});