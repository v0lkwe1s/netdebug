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
        }).when('/proxy', {
            templateUrl : 'templates/proxy.html',
            controller     : 'proxyTab',
        }).otherwise ({ redirectTo: '/' });
});

app.controller('overviewTab', function($rootScope, $http, $scope, $location, $interval){
	$rootScope.activetab = $location.path();
	$interval(function () {
			$http.get("json/config.json").then(function(response) {
				$scope.hostInfo = response.data;
			});
			$http.get("json/disk.json").then(function(response) {
				$scope.DiskInfo = response.data;
			});
			$http.get("json/iface.json").then(function(response) {
				$scope.InetIface = response.data;
			});
			$http.get("json/arp.json").then(function(response) {
				$scope.InetArp = response.data;
			});
    }, 3000);

    	$rootScope.sortBy = function(propertyName) {
			$rootScope.reverse = !$scope.reverse;
			$rootScope.propertyName = propertyName;
    }
});
app.controller('proxyTab', function($rootScope, $http, $scope, $location, $interval){
	$rootScope.activetab = $location.path();
	$interval(function () {
			$http.get("json/squid.json").then(function(response) {
				$scope.proxyInfo = response.data;
			});
    }, 3500);
    $rootScope.sortBy = function(propertyName) {
		$rootScope.reverse = !$scope.reverse;
		$rootScope.propertyName = propertyName;
    }
}).filter('secondsToDateTime', [function() {
    return function(seconds) {
        return new Date(1970, 0, 1).setSeconds(seconds);
    };
}]);