import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // For mobile
import 'package:geolocator/geolocator.dart';

class Mappa extends StatefulWidget {
  const Mappa({Key? key}) : super(key: key);

  @override
  _MappaState createState() => _MappaState();
}

class _MappaState extends State<Mappa> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};
  CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(41.9028, 12.4964), // Latitudine e longitudine di Roma
    zoom: 6,
  );

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  // Funzione per ottenere la posizione attuale dell'utente
  void _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      // Verifica se il widget è ancora montato prima di chiamare setState
      if (mounted) {
        setState(() {
          _initialPosition = CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: 14,
          );
          _markers.add(
            Marker(
              markerId: MarkerId('current_location'),
              position: LatLng(position.latitude, position.longitude),
              infoWindow: const InfoWindow(title: 'La tua posizione'),
            ),
          );
        });
      }
    } catch (e) {
      print("Errore nel ottenere la posizione: $e");
    }
  }

  // Funzione per inizializzare la mappa
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mappa Google Maps in Flutter"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: _initialPosition,
        markers: _markers,
        onTap: (LatLng location) {
          setState(() {
            // Aggiungi un marker quando l'utente tocca la mappa
            _markers.add(Marker(
              markerId: MarkerId(location.toString()),
              position: location,
              infoWindow: const InfoWindow(title: 'Nuovo Marker'),
            ));
          });
        },
      ),
    );
  }
}
