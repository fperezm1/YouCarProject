import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';


class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  MapType type;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Set<Marker> markers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    type = MapType.hybrid;
    markers = Set.from([]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: type,
            markers: markers,           
            onTap: (position){
              Marker mk1 = Marker(
                markerId: MarkerId('1'),
                position: position,
              );
              setState(() {
                markers.add(mk1);
              });
            },
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      type = type == MapType.hybrid ? MapType.normal : MapType.hybrid;
                    });
                  },
                  child: Icon(Icons.map),
                ),
                FloatingActionButton(
                  child: Icon(Icons.zoom_in),
                  onPressed: () async{
                    (await _controller.future).animateCamera(CameraUpdate.zoomIn());
                  },
                ),
                FloatingActionButton(
                  child: Icon(Icons.zoom_out),
                  onPressed: () async {
                    (await _controller.future).animateCamera(CameraUpdate.zoomOut());
                  },
                ),
                FloatingActionButton.extended(
                  icon: Icon(Icons.location_on),
                  label: Text("My position"),
                  onPressed: (){
                    if(markers.length < 1)
                      print("no marker added");
                    print(markers.first.position);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}