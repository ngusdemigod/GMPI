import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_thread_update_model.dart';
export 'chat_thread_update_model.dart';

class ChatThreadUpdateWidget extends StatefulWidget {
  const ChatThreadUpdateWidget({super.key});

  @override
  State<ChatThreadUpdateWidget> createState() => _ChatThreadUpdateWidgetState();
}

class _ChatThreadUpdateWidgetState extends State<ChatThreadUpdateWidget> {
  late ChatThreadUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadUpdateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 8.0, 16.0),
                    child: Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SelectionArea(
                                  child: AutoSizeText(
                                'Thanks so much! We really do appreciate it!',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              )),
                              Text(
                                'Just Now',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  1.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(12.0),
                            ),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectionArea(
                                    child: AutoSizeText(
                                  'Thanks so much! We really do appreciate it!',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: double.infinity,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 8.0),
                    child: Text(
                      'Just Now',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).accent1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SelectionArea(
                              child: Text(
                            'Hey really love what you are doing!',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ].addToEnd(SizedBox(height: 30.0)),
    );
  }
}
