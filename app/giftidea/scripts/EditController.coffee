angular
  .module('giftidea')
  .controller("EditController", ($scope, Giftidea, supersonic) ->
    $scope.giftidea = null
    $scope.showSpinner = true

    supersonic.ui.views.current.params.onValue (values) ->
      Giftidea.find(values.id).then (giftidea) ->
        $scope.$apply ->
          $scope.giftidea = giftidea
          $scope.showSpinner = false

    $scope.submitForm = ->
      $scope.showSpinner = true
      $scope.giftidea.save().then ->
        supersonic.ui.modal.hide()

    $scope.cancel = ->
      supersonic.ui.modal.hide()
  )
