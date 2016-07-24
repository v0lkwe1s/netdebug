app.service('UserGroupService', function($q, $window){
        var keyStore = 'userGroup';
        
        function listAll(){
            return (angular.fromJson($window.localStorage[keyStore]) || []);
        };
        function deleteFiltered(groups){
            var defered = $q.defer();
            var filtered = groups.filter(function(item){
			 if (!item.selected){
                return item;
			 }
            });
            $window.localStorage[keyStore] = angular.toJson(filtered);
            defered.resolve(filtered);
            return defered.promise;
        }
        function saveObject(group){
            var defered = $q.defer();
            var groups = listAll();
            
            if ((group.index) || (group.index ==0)){
                var grpAux = {
                    name : group.name
                }
                groups[group.index] = grpAux;
            } else {
                groups.push(group);
            }
            $window.localStorage[keyStore] = angular.toJson(groups);
            defered.resolve(groups);
            return defered.promise;
        }
        return {
            $list: listAll,
            $delete: deleteFiltered,
            $save: saveObject
        } 
});