<?php
include './Log_In_Data_Base.php';
include '../Sesion/Session_Chack.php';
$oj=new Log_In_Data_Base();
$data=$oj->Show_Data($_SESSION['id'],$_SESSION['password']);
echo'<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: '.$data[12].', lng: '.$data[13].'};
        var map = new google.maps.Map(document.getElementById("map"), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCk0wVOEjN9-gKjes7G9Q4JQXGNydeB9t8 &callback=initMap">
    </script>
  </body>
</html>';
