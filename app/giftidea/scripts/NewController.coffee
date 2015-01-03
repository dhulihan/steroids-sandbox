angular
  .module('giftidea')
  .controller("NewController", ($scope, Giftidea, supersonic) ->
    $scope.giftidea = {}

    $scope.submitForm = ->
      $scope.showSpinner = true
      newgiftidea = new Giftidea($scope.giftidea)
      newgiftidea.save().then ->
        supersonic.ui.modal.hide()

    $scope.cancel = ->
      supersonic.ui.modal.hide()
  )
