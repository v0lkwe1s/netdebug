var app = angular.module('netDebug',[]);
app.controller('cpuCtrl', function($scope, $http, $interval) {
  $interval(function () {
    $http.get("json/cpuInfo.json").then(function (response) {
        $scope.cpuInfo = response.data.cpuInfo;
        
     });
  }, 1000);    
});

app.controller('cpuLoadCtrl', function($scope, $http, $interval) {
  $interval(function () {
    $http.get("json/cpu.json").then(function (response) {
        $scope.cpu = response.data.Load;
     });
  }, 1000);    
});