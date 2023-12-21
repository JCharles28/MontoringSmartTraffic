window.onload = function () {
  // Create a map using Leaflet
  var map = L.map("map").setView([48.715360, 2.298221], 500);

  // Add a tile layer to the map (OpenStreetMap)
  L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
    attribution: "© OpenStreetMap",
  }).addTo(map);

  // Add a marker to the map
  L.marker([51.5, -0.09]).addTo(map);

  // Add a circle to the map
//   L.circle([48.715360, 2.298221], 600, {
//     color: "black",
//     fillColor: "#f03",
//     border: 0.1,
//     fillOpacity: 0.5,
//   }).addTo(map);

L.circle([48.715360, 2.298221], 50, {
    color: 'black',      // the color of the circle outline
    fillColor: '#1a5276',  // the color of the circle fill
    fillOpacity: 0.25,   // the opacity of the circle fill
    stroke: true,       // whether to draw the circle outline
    weight: 1.25,         // the width of the circle outline in pixels
    opacity: 1,         // the opacity of the circle outline
    lineCap: 'round',   // the shape to be used at the end of the circle outline, 'butt', 'round' or 'square'
    lineJoin: 'round',  // the shape to be used at the corners of the circle outline, 'miter', 'round' or 'bevel'
    dashArray: null,    // the dash pattern for the circle outline, e.g. '10, 10' for a dashed line
    dashOffset: null,   // the distance into the dash pattern to start the dash
    
}).addTo(map);

};
