app.service('UserService', function($q, $window){
        var keyStore = 'users';
        function listAll(){
            return (angular.fromJson($window.localStorage[keyStore]) || []);
        };
        function deleteFiltered(users){
            var defered = $q.defer();
            var filtered = users.filter(function(item){
			 if (!item.selected){
                return item;
			 }
            });
            $window.localStorage[keyStore] = angular.toJson(filtered);
            defered.resolve(filtered);
            return defered.promise;
        }
        function saveObject(user){
            var defered = $q.defer();
            var users = listAll();
            users.push(user);
            $window.localStorage[keyStore] = angular.toJson(users);
            defered.resolve(users);
            return defered.promise;
        }
        return {
            $list: listAll,
            $delete: deleteFiltered,
            $save: saveObject
        } 
});