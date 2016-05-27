(function(){
    'use strict';

    angular
        .module('app.main')
        .controller('MainController', MainController);

    MainController.$inject = ['$scope', '$timeout', '$http', '$stateParams', '$firebaseArray'];
    /* @ngInject */

    function MainController($scope, $timeout, $http, $stateParams, $firebaseArray) {
        'use strict';

        var vm = this; // view model object setup
        vm.content;

        var groupCrimes = [];

        var ref = new Firebase("https://y7e9dk0dmf3ls.firebaseio.com/content");
        vm.content= $firebaseArray(ref);

        activate();

        var map = new google.maps.Map(d3.select("#map").node(), {
  zoom: 11,
  center: new google.maps.LatLng(51.5317, 0.1243),
  mapTypeId: google.maps.MapTypeId.TERRAIN
});


// Load the station data. When the data comes back, create an overlay.
d3.json("data/street_crime.json", function(error, data) {
  if (error) throw error;

  var groupedCrimes = [];

  data.forEach(function(item, index){
    return;
    // console.log(item); return;
    // console.log(groupedCrimes);
    var isNewItem = false;
    var newItem = {};

    if (index === 0) {
        newItem.latitude = item.location.latitude;
        newItem.longitude = item.location.longitude;
        newItem.crimes = item.category;
        // groupedCrimes.latitude = groupedCrimes.latitude;
        // groupedCrimes.longitude = groupedCrimes.longitude;
        groupedCrimes.push(newItem);
        return;
    }

    groupedCrimes.forEach(function(itemmm, index){
        // console.group(index);
        // console.log(groupedCrimes);
        console.log(index);
        // console.groupEnd(index);
        // return;
        if (!isNewItem && item.location.latitude === itemmm.latitude && item.location.longitude === itemmm.longitude) {
            debugger;
            groupedCrimes[index].crimes += ', ' + item.category;
        } else {
            isNewItem = true;
        }
        // console.log('itemmm');
    });

    if (isNewItem) {
        newItem.latitude = item.location.latitude;
        newItem.longitude = item.location.longitude;
        newItem.crimes = item.category;
        // groupedCrimes.latitude = groupedCrimes.latitude;
        // groupedCrimes.longitude = groupedCrimes.longitude;
        groupedCrimes.push(newItem);
        isNewItem = false;
        // console.log(item);
    }
    // console.log(item);
  });

  // data = groupedCrimes;
  console.log(groupedCrimes);
  // return;

  // console.log(data);

  var overlay = new google.maps.OverlayView();

  // Add the container when the overlay is added to the map.
  overlay.onAdd = function() {
    var layer = d3.select(this.getPanes().overlayLayer).append("div")
        .attr("class", "stations");

    // Draw each marker as a separate SVG element.
    // We could use a single SVG, but what size would it have?
    overlay.draw = function() {
      var projection = this.getProjection(),
          padding = 10;

      var marker = layer.selectAll("svg")
          .data(d3.entries(data))
          .each(transform) // update existing markers
        .enter().append("svg")
          .each(transform)
          .attr("class", "marker");

      // Add a circle.
      marker.append("circle")
          .attr("r", 4.5)
          .attr("cx", padding)
          .attr("cy", padding);

      // Add a label.
      marker.append("text")
          .attr("x", padding + 7)
          .attr("y", padding)
          .attr("dy", ".31em")
          .text(function(d) { return d.key; });

      function transform(d) {
        // console.log(d);
        d = new google.maps.LatLng(d.value.location.latitude, d.value.location.longitude);
        d = projection.fromLatLngToDivPixel(d);
        return d3.select(this)
            .style("left", (d.x - padding) + "px")
            .style("top", (d.y - padding) + "px");
      }
    };
  };

  // Bind our overlay to the map…
  overlay.setMap(map);
});


        function activate() {

            // vm.content.$add({
            //     text: 'foo'
            // });

            // console.log(vm.content);

            // $http({
            //   method: 'GET',
            //   url: '/someUrl'
            // }).then(function successCallback(response) {
            //     console.log(response);
            //   }, function errorCallback(response) {
            //     console.warn(response);
            //   });

        } //activate

    } // MainController
})();
