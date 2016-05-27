(function(){
    'use strict';

    angular
        .module('app.main')
        .controller('MainController', MainController);

    MainController.$inject = ['$scope', '$timeout', '$http', '$stateParams', '$firebaseArray'];
    /* @ngInject */

    function MainController($scope, $timeout, $http, $stateParams, $firebaseArray) {
        'use strict';

        var vm = this; // view model object setup
        vm.content;

        var ref = new Firebase("https://y7e9dk0dmf3ls.firebaseio.com/content");
        vm.content= $firebaseArray(ref);

        activate();

        function activate() {
            vm.content.$add({
                text: 'foo'
            });

            console.log(vm.content);
        } //activate

    } // MainController
})();
