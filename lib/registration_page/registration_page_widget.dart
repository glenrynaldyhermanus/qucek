import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPageWidget extends StatefulWidget {
  RegistrationPageWidget({Key key}) : super(key: key);

  @override
  _RegistrationPageWidgetState createState() => _RegistrationPageWidgetState();
}

class _RegistrationPageWidgetState extends State<RegistrationPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'It\'s a good start to know each other',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                  Text(
                    'What\'s your name?',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
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
                            TextFormField(
                              controller: textController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'John Doe',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Comfortaa',
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Comfortaa',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await registerCall();
                  },
                  text: 'Save',
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
    );
  }
}
