var map;

function initialize() {
  var mapOptions = {
    zoom: 17
  };
//Center Google map on browser size
  google.maps.event.addDomListener(window, "resize", function() {
    var center = map.getCenter();
    google.maps.event.trigger(map, "resize");
    map.setCenter(center); 
  });
//Geolocation
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);

      var infowindow = new google.maps.InfoWindow({
        map: map,
        position: pos,
        content: 'You'
      });

      map.setCenter(pos);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {
    handleNoGeolocation(false);
  }

//Style the base map
  map.set('styles', [
    {
      featureType: 'road',
      elementType: 'geometry',
      stylers: [
        { color: '#F0FFFF' },
        { weight: 1.6 }
      ]
    }, {
      featureType: 'road',
      elementType: 'labels',
      stylers: [
        { saturation: -100 },
        { invert_lightness: true }
      ]
    }, {
      featureType: 'landscape',
      elementType: 'geometry',
      stylers: [
        { color: '#F7E7CE' },
        { gamma: 1.4 }
      ]
    }, {
      featureType: 'poi',
      elementType: 'geometry',
      stylers: [
        { visibility: 'off' }
      ]
    }, {
      featureType: 'poi.school',
      elementType: 'geometry',
      stylers: [
        { visibility: 'on' },
        { color: '#CFECEC' }
      ]
    }
  ]);
}

function handleNoGeolocation(errorFlag) {
  if (errorFlag) {
    var content = 'Error: The Geolocation service failed.';
  } else {
    var content = 'Error: Your browser doesn\'t support geolocation.';
  }

  var options = {
    map: map,
    position: new google.maps.LatLng(60, 105),
    content: content
  };

  var infowindow = new google.maps.InfoWindow(options);
  map.setCenter(options.position);
}

google.maps.event.addDomListener(window, 'load', initialize);
