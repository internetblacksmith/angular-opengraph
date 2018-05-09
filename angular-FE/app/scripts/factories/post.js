"use strict";

angular.module("angularFeApp").factory("Post", [
  "$http",
  "BE_URL",
  function($http, BE_URL) {
    return {
      getAll: function() {
        return $http.get(BE_URL + "/posts/");
      },
      getPost: function(id) {
        return $http.get(BE_URL + "/posts/" + id);
      }
    };
  }
]);
