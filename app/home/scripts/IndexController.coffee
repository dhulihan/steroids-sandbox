angular
  .module('home')
  .controller 'IndexController', ($scope, supersonic) ->
    # Controller functionality here
    $scope.dialog = ->
      supersonic.ui.dialog.alert('This is a dialog message.')

    $scope.drawer = ->
      supersonic.ui.drawers.open("left").then ->
        supersonic.logger.log('Drawer opened... ')

    $scope.log = ->
      supersonic.logger.log('Message from ' + device.platform)

    $scope.ping = ->
      supersonic.debug.ping
        onSuccess: (data) ->
          supersonic.logger.log data
        onFailure: (error) ->
          supersonic.logger.log error
          
    $scope.showSplashScreen = ->
      supersonic.app.splashscreen.show().then () ->
        $timeout ->
          supersonic.app.splashscreen.hide()
        , 250