var app = angular.module('netDebug',['ngRoute']);
app.config(function($routeProvider, $locationProvider, $httpProvider){

    $httpProvider.defaults.useXDomain = true;
    delete $httpProvider.defaults.headers.common['X-Requested-With'];

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
        }).when('/users', {
            templateUrl : 'templates/users.html',
            controller     : 'userTab',
        }).otherwise ({ redirectTo: '/' });
});

app.controller('overviewTab', function($rootScope, $http, $scope, $location, $interval){
	$rootScope.activetab = $location.path();
	$interval(function () {
			$http.get("json/config.json").then(function(response) {
				$scope.hostInfo = response.data;
			});
			$http.get("http://127.0.0.1:30000/json/disk/").then(function(response) {
				$scope.DiskInfo = response.data;
			});

			$http.get("http://127.0.0.1:30000/json/ifaces/").then(function(response) {
				$scope.InetIface = response.data;
			});
            $http.get("http://127.0.0.1:30000/json/arp").then(function(response) {
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
app.controller('userTab', function($rootScope, $http, $scope, $location, $interval){
	$rootScope.activetab = $location.path();
});