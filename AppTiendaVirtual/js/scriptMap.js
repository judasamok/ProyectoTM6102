function initMap() {
    // The location of Uluru
    var tienda = { lat: 9.991948294062325, lng: -84.66667322083543 };
    // The map, centered at Uluru
    var map = new google.maps.Map(
        document.getElementById('map'), {
            zoom: 16,
            center: tienda,
            gestureHandling: 'cooperative'
        });// The marker, positioned at Uluru
    var marker = new google.maps.Marker({
        position: tienda,
        map: map,
        title: 'HEARTSONG'
    });
}//end

$('.carousel').carousel({
    interval: 150,
});
