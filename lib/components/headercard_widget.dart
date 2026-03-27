import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'headercard_model.dart';
export 'headercard_model.dart';

class HeadercardWidget extends StatefulWidget {
  const HeadercardWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String? title;
  final String? description;

  @override
  State<HeadercardWidget> createState() => _HeadercardWidgetState();
}

class _HeadercardWidgetState extends State<HeadercardWidget> {
  late HeadercardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadercardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: AlignmentDirectional(-1.0, -1.0),
            image: Image.asset(
              'assets/images/e6c8ade623c28bea3cca73b9b1851d6a.jpg',
            ).image,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x26041C10), Color(0xFF082917)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 34.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: AutoSizeText(
                      valueOrDefault<String>(
                        widget!.title,
                        'Null',
                      ),
                      minFontSize: 35.0,
                      style: FlutterFlowTheme.of(context)
                          .displayMedium
                          .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .displayMediumFamily,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .displayMediumIsCustom,
                          ),
                    ),
                  ),
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: valueOrDefault<String>(
                          widget!.description,
                          'description',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).alternate,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFFDFDDDD),
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
              ].addToEnd(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
