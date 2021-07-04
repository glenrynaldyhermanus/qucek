import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCheckoutPageWidget extends StatefulWidget {
  OrderCheckoutPageWidget({Key key}) : super(key: key);

  @override
  _OrderCheckoutPageWidgetState createState() =>
      _OrderCheckoutPageWidgetState();
}

class _OrderCheckoutPageWidgetState extends State<OrderCheckoutPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Align(
          alignment: Alignment(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outlined,
                color: FlutterFlowTheme.tertiaryColor,
                size: 120,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Text(
                  'Order Success!',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                child: Text(
                  'We will process your Order ASAP!',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                child: Text(
                  'Stay with us. Stay safe!',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Comfortaa',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
