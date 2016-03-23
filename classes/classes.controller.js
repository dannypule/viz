(function(){
    'use strict';

    angular
        .module('app.classes')
        .controller('ClassesController', ClassesController);

    ClassesController.$inject = ['$scope', '$timeout', '$http', '$stateParams'];
    /* @ngInject */

    function ClassesController($scope, $timeout, $http, $stateParams) {
        'use strict';

        var vm = this; // view model object setup

        activate();

        function activate() {

        } //activate

    } // ClassesController
})();