app.controller('psCtrl', function($scope, $http, $interval) {
  $interval(function () {
    $http.get("json/ps.json").then(function (response) {
        $scope.psInfo = response.data.Proccess;
     });
  }, 1000);    
});