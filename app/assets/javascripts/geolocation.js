var map;
var mapOptions = {
  zoom: 17,
  position: new google.maps.LatLng(42.366246, -71.258873)
};

function initialize() {
//Center Google map on browser size
  google.maps.event.addDomListener(window, "resize", function() {
    var center = map.getCenter();
    google.maps.event.trigger(map, "resize");
    map.setCenter(center); 
  });
//Geolocation
  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  map.setCenter(mapOptions.position);
//Style the base map
  setMapStyles();  
}

function setMapStyles(){
  map.set('styles', [
  {
    "featureType": "poi.school",
    "elementType": "geometry.fill",
    "stylers": [
      { "weight": 5.3 },
      { "color": "#001BA7" }
    ]
  },{
    "featureType": "landscape",
    "elementType": "geometry.fill",
    "stylers": [
      { "color": "#9e503e" }
    ]
  }
  ]);
}

function getCurrentLocation() {
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      showCurrentLocation, 
      function() { handleNoGeolocation(true); }
    );
  } else {
    handleNoGeolocation(false);
  }
}

function showCurrentLocation(position){
  pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
  var marker = new google.maps.Marker({
    position: pos,
    map: map
  });
  map.setCenter(pos);
  map.setZoom(18);
}

function handleNoGeolocation(errorFlag) {
  if (errorFlag) {
    var content = 'Error: The Geolocation service failed.';
  } else {
    var content = 'Error: Your browser doesn\'t support geolocation.';
  }

  var options = {
    map: map,
    position: new google.maps.LatLng(42.366246, -71.258873),
    content: content
  };

  var infowindow = new google.maps.InfoWindow(options);
  map.setCenter(options.position);
}



