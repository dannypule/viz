(function(){
    'use strict';

    angular
        .module('app.main')
        .controller('MainController', MainController);

    MainController.$inject = ['$scope', '$timeout', '$http', '$stateParams'];
    /* @ngInject */

    function MainController($scope, $timeout, $http, $stateParams) {
        'use strict';

        var vm = this; // view model object setup

        activate();

        function activate() {

        } //activate

    } // MainController
})();