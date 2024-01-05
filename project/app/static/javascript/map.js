window.onload = function () {
  alert("Bienvenue sur la carte de l'intersection testé par le prototype Smart Traffic.");
  // Create a map using Leaflet
  var map = L.map("map").setView([48.71536, 2.298221], 700);


  // Add a tile layer to the map (OpenStreetMap)
  L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
    attribution: "©",
    maxZoom: 18.499999,
  }).addTo(map);


  // Markers (feux)
  var marker1 = L.marker([48.715701, 2.298238]).addTo(map);
  var marker2 = L.marker([48.715294, 2.298024]).addTo(map);
  var marker3 = L.marker([48.714974, 2.298427]).addTo(map);
  var marker4 = L.marker([48.715270, 2.298771]).addTo(map);

  marker1.bindPopup("<b>Feu n°1</b>").openPopup();
  marker2.bindPopup("<b>Feu n°2</b>").openPopup();
  marker3.bindPopup("<b>Feu n°3</b>").openPopup();
  marker4.bindPopup("<b>Feu n°4</b>").openPopup();
  

  L.circle([48.715295, 2.298321], 45, {
    color: "#4287f5", 
    fillColor: "#37edef",
    fillOpacity: 0.2, 
    stroke: true, 
    weight: 1.5, 
    opacity: 0.8, 
    lineCap: "round", 
    lineJoin: "bevel", 
    dashArray: "5, 5", 
    dashOffset: "0" 
  }).addTo(map);


};

