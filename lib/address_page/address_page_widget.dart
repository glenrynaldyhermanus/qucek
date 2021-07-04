import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressPageWidget extends StatefulWidget {
  AddressPageWidget({Key key}) : super(key: key);

  @override
  _AddressPageWidgetState createState() => _AddressPageWidgetState();
}

class _AddressPageWidgetState extends State<AddressPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Select Address',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Comfortaa',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            FlutterFlowGoogleMap(
              initialLocation: LatLng(-6.1604402, 106.7870366),
              markerColor: GoogleMarkerColor.violet,
              mapType: MapType.normal,
              style: GoogleMapStyle.silver,
              initialZoom: 14,
              allowInteraction: true,
              allowZoom: true,
              showZoomControls: true,
              showLocation: true,
              showCompass: false,
              showMapToolbar: false,
              showTraffic: false,
              centerMapOnMarkerTap: true,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.black,
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text(
                        'Address',
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
