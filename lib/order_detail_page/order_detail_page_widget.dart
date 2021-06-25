import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailPageWidget extends StatefulWidget {
  OrderDetailPageWidget({Key key}) : super(key: key);

  @override
  _OrderDetailPageWidgetState createState() => _OrderDetailPageWidgetState();
}

class _OrderDetailPageWidgetState extends State<OrderDetailPageWidget> {
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
          'Your Order',
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order No.',
                  style: FlutterFlowTheme.bodyText2.override(
                    fontFamily: 'Comfortaa',
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        'K-123010123001',
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        'Delivered',
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 32,
                  thickness: 0.5,
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/197/600',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Ordered',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/197/600',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Picked Up',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/197/600',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Delivery',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/197/600',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Completed',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 32,
                  thickness: 0.5,
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                Text(
                  'Here\'s your summary',
                  style: FlutterFlowTheme.title3.override(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
