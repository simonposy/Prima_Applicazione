import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class myMarker {
  final String id;
  final Position position;
  final String title;
  myMarker({
    required this.id,
    required this.position,
    required this.title,
});

Marker toMarker(){
    return Marker(
      markerId: MarkerId(id),
      position: LatLng(position.latitude, position.longitude),
      infoWindow: InfoWindow(title: title),
    );
}
}