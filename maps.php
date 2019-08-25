<?php include_once('header.php'); ?>
<div class="row" style="margin-left: 12em;">
  <div id="map" style="width:90%;height:550px;"></div>
</div>
<script type="text/javascript">
  function myMap() {
    var myCenter = new google.maps.LatLng(28.546865,77.245240);
    var mapCanvas = document.getElementById("map");
    var mapOptions = {center: myCenter, zoom: 14};
    var map = new google.maps.Map(mapCanvas, mapOptions);
    var marker = new google.maps.Marker({position:myCenter});
    marker.setMap(map);
}
</script>
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0ecKVYPITUpJOPa2IbGAgzjMP7wR7GqM=myMap"></script> -->
<!-- <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;hl=en&amp;key=AIzaSyA0ecKVYPITUpJOPa2IbGAgzjMP7wR7GqM&amp;sensor=true" type="text/javascript"></script>
 -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0ecKVYPITUpJOPa2IbGAgzjMP7wR7GqM&callback=myMap"></script>

<?php include_once('footer.php'); ?>