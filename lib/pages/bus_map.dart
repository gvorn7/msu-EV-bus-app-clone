





// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// List<Map<String, dynamic>> data = [
//   {
//     "id": "1",
//     "position": const LatLng(16.251844, 103.248754),
//     "assetsPath": "assets/images/bulocat.png",
//     "titleitems":"bus001",
//   },
//   {
//     "id": "2",
//     "position": const LatLng(16.251746, 103.248958),
//     "assetsPath": "assets/images/bulocat.png",
//     "titleitems":"bus002",
//   },
//   {
//     "id": "3",
//     "position": const LatLng(16.251633, 103.249071),
//     "assetsPath": "assets/images/bulocat.png",
//     "titleitems":"bus003",
//   },
//   {
//     "id": "4",
//     "position": const LatLng(16.250891, 103.248277),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "5",
//     "position": const LatLng(16.249841, 103.252761),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "6",
//     "position": const LatLng(16.250167, 103.251270),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "7",
//     "position": const LatLng(16.250080, 103.248915),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "8",
//     "position": const LatLng(16.248490, 103.246480),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "9",
//     "position": const LatLng(16.245219, 103.248616),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "10",
//     "position": const LatLng(16.244854, 103.249560),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "10",
//     "position": const LatLng(16.243288, 103.251480),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "11",
//     "position": const LatLng(16.245443, 103.252503),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
//   {
//     "id": "12",
//     "position": const LatLng(16.247335, 103.253207),
//     "assetsPath": "assets/images/busstop.png",
//     "titleitems":"Bus Stop",
//   },
// ];

// class LocationBusPage extends StatefulWidget {
//   const LocationBusPage({super.key});

//   @override
//   State<LocationBusPage> createState() => _LocationBusPageState();
// }

// class _LocationBusPageState extends State<LocationBusPage> {
//   final Completer<GoogleMapController> _controller = Completer();
//   final Map<String, Marker> _markers = {};
//   @override
//   void initState() {
//     _generateMarkers();
//     super.initState();
//   }

//   static const CameraPosition _cameraPosition = CameraPosition(
//       target: LatLng(16.245576907725887, 103.24985611325698), zoom: 15.5);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         myLocationButtonEnabled: false,
//         initialCameraPosition: _cameraPosition,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//         markers: _markers.values.toSet(),
//       ),
//     );
//   }

//   _generateMarkers() async {
//     for (int i = 0; i < data.length; i++) {
//       BitmapDescriptor markerIcon = await BitmapDescriptor.fromAssetImage(
//           const ImageConfiguration(), data[i]["assetsPath"]);

//       _markers[i.toString()] = Marker(
//         markerId: MarkerId(i.toString()),
//         position: data[i]["position"],
//         icon: markerIcon,
//         infoWindow: InfoWindow(title: data[i]["titleitems"])
//         );

//         setState(() {
          
//         });

      
//     }
//   }

//   _generateMarker() async {}
// }

























// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class BusMap extends StatefulWidget {
//   const BusMap({super.key});

//   @override
//   State<BusMap> createState() => _BusMapState();
// }

// const LatLng currentLocation = LatLng(16.250226, 103.248186);

// class _BusMapState extends State<BusMap> {
//   final Completer<GoogleMapController> _controller = Completer();
//   static final CameraPosition _cameraPosition =
//       CameraPosition(target: LatLng(16.250226, 103.248186), zoom: 16);
//   // late GoogleMapController mapController;

//   @override
//   Widget build(BuildContext context) {
//     var marker = {
//       const Marker(
//         markerId: MarkerId("1"),
//         position: LatLng(16.251123, 103.248572),
//         // icon: BitmapDescriptor.defaultMarker(BitmapDescriptor.hueBlue)
//       ),
//       Marker(
//         markerId: const MarkerId("2"),
//         position: const LatLng(16.250555, 103.247575),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//       ),
//       Marker(
//         markerId: const MarkerId("3"),
//         position: const LatLng(16.250044, 103.246612),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
//       ),
//     };
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Center(child:  Text("EV Bus MSU",style: TextStyle(fontWeight: FontWeight.bold),)),
//       // ),
//       body: GoogleMap(
//         myLocationButtonEnabled: true,
//         initialCameraPosition: _cameraPosition,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//         markers: marker,
//       ),
//     );
//   }

//   // addMarker(String id, LatLng location) async {
//   //   var MarkerIcon = await BitmapDescriptor.fromAssetImage(
//   //       const ImageConfiguration(), "assets/images/bulocat.png");
//   //   var marker = Marker(
//   //       markerId: MarkerId(id),
//   //       position: location,
//   //       infoWindow:
//   //           const InfoWindow(title: "Bus MSU", snippet: "ev bus1 of MSU"),
//   //           icon: MarkerIcon);
//   //   _marker[id] = marker;
//   //   setState(() {});
//   // }
// }
