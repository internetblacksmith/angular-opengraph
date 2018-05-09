"use strict";

/**
 * @ngdoc function
 * @name angularFeApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the angularFeApp
 */
angular.module("angularFeApp").controller("PostCtrl", [
  "$scope",
  "Post",
  "$routeParams",
  function($scope, Post, $routeParams) {
    Post.getPost($routeParams.id).then(function(resp) {
      $scope.post = resp.data;
      $scope.title = $scope.post.title;
      console.log($scope.title);
    });
  }
]);
