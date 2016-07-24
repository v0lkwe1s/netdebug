app.controller('diskCtrl', function($scope, $http, $interval) {
  $interval(function () {
    $http.get("json/disk.json").then(function (response) {
        $scope.fileSystems = response.data.Disk;
     });
  }, 1000);    
});