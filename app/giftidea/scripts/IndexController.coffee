angular
  .module('giftidea')
  .controller("IndexController", ($scope, Giftidea, supersonic) ->
    $scope.giftideas = null
    $scope.showSpinner = true

    Giftidea.all().whenChanged (giftideas) ->
      $scope.$apply ->
        $scope.giftideas = giftideas
        $scope.showSpinner = false
  )