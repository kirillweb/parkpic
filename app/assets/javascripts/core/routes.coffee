angular.module('app.core')
  .config(['$routeProvider', ($routeProvider)->
    $routeProvider
      .when '/',
        templateUrl: 'members/index.html',
        controller: 'membersIndexCtrl'

      .when '/sign_up',
        templateUrl: 'auth/sign_up.html',
        controller: 'registrationCtrl'

      .when '/sign_in',
        templateUrl: 'auth/sign_in.html',
        controller: 'sessionsCtrl'

      .when '/settings',
        templateUrl: 'settings/settings.html',
        controller: 'settingsCtrl'

      .when '/members',
        templateUrl: 'members/index.html',
        controller: 'membersIndexCtrl'

      .when '/members/:id',
        templateUrl: 'members/show.html',
        controller: 'membersShowCtrl'
      .otherwise
        redirectTo: '/'
  ])
