import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../order_form_page/order_form_page_widget.dart';
import '../phone_verification_page/phone_verification_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.tertiaryColor),
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
                  child: Text(
                    'Selamat Pagi, Glen!',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Comfortaa',
                      color: FlutterFlowTheme.tertiaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 4, 0, 0),
                  child: Text(
                    'Mau Qucek apa hari ini?',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Comfortaa',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PhoneVerificationPageWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: FlutterFlowTheme.primaryColor,
                              size: 24,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Text(
                                'Pilih alamat',
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Comfortaa',
                                  color: Color(0xFF242424),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderFormPageWidget(),
                          ),
                        );
                      },
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFFFFC34),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                child: Image.network(
                                  'https://picsum.photos/seed/378/600',
                                  width: 140,
                                  height: 240,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Kiloan',
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Comfortaa',
                                  color: Color(0xFF242424),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Cuci + Lipat',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Comfortaa',
                                  color: Color(0xC5242424),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFA534DB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                              child: Image.network(
                                'https://picsum.photos/seed/378/600',
                                width: 140,
                                height: 240,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Kiloan',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Cuci + Setrika',
                              style: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Comfortaa',
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
