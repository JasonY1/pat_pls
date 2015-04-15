// app.js
// Created April 4, 2015
// Last editied: 04/14/2015

// define our application and pull ngRoute//ngAnimate
var animateApp = angular.module('animateApp', ['ui.router', 'ngAnimate']);

// ROUTING
// set our routing for this application
// each route will pull in a different controller
animateApp.config(function($routeProvider){
  $routeProvider

  // home page
  .when('/', {
    templateUrl: '../../views/main_pages/home.html.erb',
    controller: 'mainController'
  })

  // about page
  .when('/about', {
    templateUrl: '../../views/main_pages/about.html.erb',
    controller: 'aboutController'
  })

  // menu page
  .when('/menu', {
    templateUrl: '../../views/main_pages/menu.html.erb',
    controller: 'menuController'
  });
});

// Controlllers
// home page controller
animateApp.controller('mainController', function($scope) {
  $scope.pageClass = 'home';
});

// about page controller
animateApp.controller('aboutController', function($scope) {
  $scope.pageClass = 'about';
});

// menu page controller
animateApp.controller('menuController', function($scope) {
  $scope.pageClass = 'menu';
});
