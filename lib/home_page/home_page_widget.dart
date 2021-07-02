import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../order_form_page/order_form_page_widget.dart';
import '../order_list_page/order_list_page_widget.dart';
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
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderListPageWidget(),
                  ),
                );
              },
              icon: FaIcon(
                FontAwesomeIcons.history,
                color: FlutterFlowTheme.tertiaryColor,
                size: 24,
              ),
              iconSize: 24,
            ),
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
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
            ),
            Expanded(
              child: StreamBuilder<List<ServicesRecord>>(
                stream: queryServicesRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  List<ServicesRecord> listViewServicesRecordList =
                      snapshot.data;
                  // Customize what your widget looks like with no query results.
                  if (snapshot.data.isEmpty) {
                    return Container(
                      height: 100,
                      child: Center(
                        child: Text('No results.'),
                      ),
                    );
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: listViewServicesRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewServicesRecord =
                          listViewServicesRecordList[listViewIndex];
                      return Align(
                        alignment: Alignment(0, 0),
                        child: StreamBuilder<ServiceCategoriesRecord>(
                          stream: ServiceCategoriesRecord.getDocument(
                              listViewServicesRecord.category),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(child: CircularProgressIndicator());
                            }
                            final cardServiceCategoriesRecord = snapshot.data;
                            return Padding(
                              padding: EdgeInsets.fromLTRB(24, 24, 0, 24),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          OrderFormPageWidget(),
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
                                    padding:
                                        EdgeInsets.fromLTRB(16, 16, 16, 16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 16),
                                          child: Image.network(
                                            listViewServicesRecord.pictureUrl,
                                            width: 120,
                                            height: 180,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          cardServiceCategoriesRecord.name,
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Comfortaa',
                                            color: Color(0xFF242424),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          listViewServicesRecord.name,
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Comfortaa',
                                            color: Color(0xC5242424),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
