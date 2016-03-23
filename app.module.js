(function(){
    'use strict';

    angular.module('app', [
        'app.main',

        'ngAnimate', 'ngSanitize', 'ui.router'

    ]).config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
        var d = new Date();
        var n = d.getTime();
        var versioning = '?v='+n;

        $urlRouterProvider.otherwise('/');
        
        $stateProvider
            .state('main', {
                url: '/',
                templateUrl: 'main/main.html',
                controller: 'MainController',
                controllerAs: 'vm'
            });
            
    }]);
})();
