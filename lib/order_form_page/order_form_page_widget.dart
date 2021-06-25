import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification_page/phone_verification_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderFormPageWidget extends StatefulWidget {
  OrderFormPageWidget({Key key}) : super(key: key);

  @override
  _OrderFormPageWidgetState createState() => _OrderFormPageWidgetState();
}

class _OrderFormPageWidgetState extends State<OrderFormPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.tertiaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Order Pick Up',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Comfortaa',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Text(
                    'You just picked this service',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kiloan - Cuci + Lipat',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                      Text(
                        'Rp 8.000/kg',
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Comfortaa',
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 72,
                  thickness: 0.5,
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: FlutterFlowTheme.tertiaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Weight',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            IconButton(
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.minusSquare,
                                color: FlutterFlowTheme.tertiaryColor,
                                size: 20,
                              ),
                              iconSize: 20,
                            ),
                            Text(
                              '3',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Comfortaa',
                              ),
                            ),
                            Text(
                              'kg',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Comfortaa',
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.plusSquare,
                                color: FlutterFlowTheme.tertiaryColor,
                                size: 20,
                              ),
                              iconSize: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Additional Notes',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 72,
                  thickness: 0.5,
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                Text(
                  'Here\'s your summary',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Comfortaa',
                  ),
                ),
                Text(
                  'Please check this order carefully',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Comfortaa',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Service',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                          Text(
                            'Cuci + Lipat x 3kg',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Rp 24.000',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                      Text(
                        'Rp 3.000',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Admin Fee',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                      Text(
                        'Rp 1.000',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 16,
                  thickness: 0.5,
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                    Text(
                      'Rp 28.000',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Comfortaa',
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.delivery_dining,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your laundry will be picked up at',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Comfortaa',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                'Rabu, 29 May 2021 - 07:00 - 10:00',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.place,
                        color: FlutterFlowTheme.tertiaryColor,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'We will deliver it back to you at',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Comfortaa',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                'Kamis, 30 May 2021 - 07:00 - 10:00',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Comfortaa',
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhoneVerificationPageWidget(),
                        ),
                      );
                    },
                    text: 'Order - Rp 28.000',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44,
                      color: FlutterFlowTheme.tertiaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Comfortaa',
                        color: FlutterFlowTheme.primaryColor,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
