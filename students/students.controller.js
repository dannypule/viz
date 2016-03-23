(function(){
    'use strict';

    angular
        .module('app.students')
        .controller('StudentsController', StudentsController);

    StudentsController.$inject = ['$scope', '$timeout', '$http', '$stateParams'];
    /* @ngInject */

    function StudentsController($scope, $timeout, $http, $stateParams) {
        'use strict';

        var vm = this; // view model object setup

        activate();

        function activate() {

        } //activate

    } // StudentsController
})();