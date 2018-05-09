"use strict";

/**
 * @ngdoc overview
 * @name angularFeApp
 * @description
 * # angularFeApp
 *
 * Main module of the application.
 */
angular
  .module("angularFeApp", [
    "ngAnimate",
    "ngCookies",
    "ngResource",
    "ngRoute",
    "ngSanitize",
    "ngTouch"
  ])
  .config(function($routeProvider, $locationProvider) {
    $routeProvider
      .when("/", {
        templateUrl: "views/main.html",
        controller: "MainCtrl"
      })
      .when("/post/:id", {
        templateUrl: "views/post.html",
        controller: "PostCtrl"
      })
      .otherwise({
        redirectTo: "/"
      });

    // use the HTML5 History API
    $locationProvider.html5Mode(true);
  });
