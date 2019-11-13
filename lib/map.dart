// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:raseda/Style/core.dart';

// class Maps extends StatefulWidget {
//   Maps({Key key}) : super(key: key);

//   @override
//   _MapsState createState() => _MapsState();
// }

// class _MapsState extends State<Maps> {
//   GoogleMapController mapController;
//   static const _initialPosition = LatLng(12.92, 77.02);
//   LatLng _lastPosition = _initialPosition;
//   final Set<Marker> _markers = {};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           GoogleMap(
//             initialCameraPosition: CameraPosition(target: _initialPosition,
//             zoom: 20.0,
//             ),
//             onMapCreated: onCreated,
//             myLocationEnabled: true,
//             mapType: MapType.normal,
//             compassEnabled: true,
//             markers: _markers,
//             onCameraMove: _onCameraMove,
//                                   ),
//             // Positioned(
//             //   top: 40,
//             //   right: 10,
//             //   child: FloatingActionButton(onPressed: _onAddMarkerPressed,
//             //   tooltip: "add marker",
//             //   backgroundColor: black,
//             //   child: Icon(Icons.add_location,color: white,
//             //       ),
//             //     ),
//             // )
//                                 ],
//                               ),
//                               );
//                           }
                        
//   void onCreated(GoogleMapController controller) {
//     setState(() {
//       mapController = controller;
//      });
//   }
            
//   void _onCameraMove(CameraPosition position) {
//    setState(() {
//      _lastPosition = position.target;
//    });                       
//   }

//   void _onAddMarkerPressed(){
//     setState(() {
//       _markers.add(Marker(markerId: MarkerId(_lastPosition.toString()),
//       position: _lastPosition,
//       infoWindow: InfoWindow(
//         title: "remember ",
//         snippet: "good place"
//      ),
//       icon: BitmapDescriptor.defaultMarker
//       ));
//     });
//   }
// }