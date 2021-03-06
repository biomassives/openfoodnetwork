Darkswarm.controller "GroupEnterprisesCtrl", ($scope, Search, FilterSelectorsService) ->
  $scope.totalActive =  FilterSelectorsService.totalActive
  $scope.clearAll =  FilterSelectorsService.clearAll
  $scope.filterText =  FilterSelectorsService.filterText
  $scope.FilterSelectorsService =  FilterSelectorsService
  $scope.query = Search.search()
  $scope.activeTaxons = []
  $scope.show_profiles = false
  $scope.filtersActive = false

  $scope.$watch "query", (query)->
    Search.search query
