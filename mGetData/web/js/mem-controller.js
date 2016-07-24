app.controller('memCtrl', function($scope, $http, $interval) {
  $interval(function () {
    $http.get("json/mem.json").then(function (response) {
        $scope.memInfo = response.data.Memory;
     });
  }, 1000);    
});