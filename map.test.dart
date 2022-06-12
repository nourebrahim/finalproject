import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class CurrentLocation extends StatefulWidget {
  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  Color mainColor = Color(0xff7f1019);
  Color textColor = Colors.black54;
  Set<Marker> mylist = {};

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: GoogleMap(
          initialCameraPosition:
              const CameraPosition(target: LatLng(0.0, 0.0), zoom: 10),
          markers: mylist,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.location_on_outlined),
          onPressed: () async {
            Location myloc = new Location();
            LocationData x = await myloc.getLocation();
            dynamic a = x.latitude;
            dynamic b = x.longitude;
            setState(() {
              mylist.add(Marker(
                markerId: MarkerId("hghgh"),
                position: LatLng(a, b),
                infoWindow: InfoWindow(snippet: "ddd", title: "ddd"),
              ));
            });
          },
        ),
      ),
    );
  }
}
