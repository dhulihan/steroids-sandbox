angular
  .module('giftidea')
  .controller("ShowController", ($scope, Giftidea, supersonic) ->
    $scope.giftidea = null
    $scope.showSpinner = true
    $scope.dataId = undefined

    _refreshViewData = ->
      Giftidea.find($scope.dataId).then (giftidea) ->
        $scope.$apply ->
          $scope.giftidea = giftidea
          $scope.showSpinner = false

    supersonic.ui.views.current.whenVisible ->
      _refreshViewData() if $scope.dataId

    supersonic.ui.views.current.params.onValue (values) ->
      $scope.dataId = values.id
      _refreshViewData()

    $scope.remove = (id) ->
      $scope.showSpinner = true
      $scope.giftidea.delete().then ->
        supersonic.ui.layers.pop()
  )
