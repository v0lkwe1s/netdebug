var app = angular.module('netDebug',['ngRoute', 'ngMaterial', 'chart.js']);
app.config(function($routeProvider, $locationProvider){
    $locationProvider.html5Mode({
        enabled: false,
        requireBase: false
    });
    $routeProvider
        .when('/serverInfo', {
            templateUrl : 'templates/overview.html',
            controller     : 'overviewTab',
        })
        .when('/', {
            templateUrl : 'templates/login.html',
            controller     : "LoginCtrl",
        })
        .when('/users', {
            templateUrl : 'templates/users.html',
            controller     : "UserCtrl",
        })
        .when('/userGroup', {
            templateUrl : 'templates/userGroup.html',
            controller     : "UserGroupCtrl",
        })
        .when('/entries', {
            templateUrl : 'templates/entries.html',
            controller     : "EntriesCtrl",
        })
        .when('/login', {
            templateUrl : 'templates/login.html',
            controller     : 'loginCtrl',
        })
        .otherwise ({ redirectTo: '/netdebug/' });
});

app.controller('overviewTab', function($rootScope, $http, $scope, $location, $interval){
	$rootScope.activetab = $location.path();
	$interval(function () {
			$http.get("json/config.json").then(function(response) {
				$scope.hostInfo = response.data;
				$scope.teste = "test"
				$scope.data = [response.data.Load.cpu, (100 - response.data.Load.cpu)];
				$scope.labels = ["% in use", "% Free"];
				$scope.colors = backgroundColor = ["#FF0022", "#DDDDDD"];
				$scope.options = {
					cutoutPercentage : 90,
				};
			});
    }, 1000);

    $rootScope.sortBy = function(propertyName) {
			$rootScope.reverse = !$scope.reverse;
			$rootScope.propertyName = propertyName;
    }
		//Não consegui fazer a soma de todos os valores filtrados
		$scope.sumFilteredCpu = 1;
		$scope.determinateValue = 30;
});

app.controller('EntriesCtrl', function($rootScope, $location) {
    $rootScope.activetab = $location.path();
});
app.controller('LoginCtrl', function($rootScope, $location) {
    $rootScope.activetab = $location.path();
});