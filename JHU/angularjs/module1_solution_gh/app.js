(function() {
    'use strict';
        angular.module('lunchCheck', [])
        .controller('lunchCheckController', lunchCheckController);

        lunchCheckController.$inject = ['$scope'];
        function lunchCheckController($scope) {
            $scope.menu = "";
            $scope.checkResult = "";

            $scope.displayMenuNum = function() {
                var menuNum = countMenuNum($scope.menu);
                $scope.checkResult = menuNum;
            };
        };

        function countMenuNum(string) {
            var arr = string.split(",");

            if(clearArray(arr) <= 3 && clearArray(arr) > 0) {
                return "Enjoy!";
            } else if(clearArray(arr) >= 4) {
                return "Too much!";
            } else {
                return "Plaese enter data first!";
            };

            //  clear out the empty elements in array.
            function clearArray(elem) {
                var newArray = [];

                for(var i = 0; i < elem.length; i ++) {
                    if(elem[i]) {
                        newArray.push(elem[i]);
                    }
                }
                return newArray.length;
            }
        }
})();