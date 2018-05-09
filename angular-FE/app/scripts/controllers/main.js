"use strict";

angular.module("angularFeApp").controller("MainCtrl", [
  "$scope",
  "Post",
  function($scope, Post) {
    Post.getAll().then(function(resp) {
      $scope.posts = resp.data;
    });
  }
]);
