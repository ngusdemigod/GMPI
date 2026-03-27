import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sucess_model.dart';
export 'sucess_model.dart';

class SucessWidget extends StatefulWidget {
  const SucessWidget({
    super.key,
    required this.trxref,
  });

  final String? trxref;

  static String routeName = 'sucess';
  static String routePath = '/sucess';

  @override
  State<SucessWidget> createState() => _SucessWidgetState();
}

class _SucessWidgetState extends State<SucessWidget>
    with TickerProviderStateMixin {
  late SucessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-4.0, -4.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: FutureBuilder<ApiCallResponse>(
          future: VerifyTransactionCall.call(
            ref: widget!.trxref,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: SpinKitFadingCube(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ),
              );
            }
            final containerVerifyTransactionResponse = snapshot.data!;

            return Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 30.0,
                          borderWidth: 2.0,
                          buttonSize: 44.0,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            context.goNamed(
                              TransactionHistoryWidget.routeName,
                              extra: <String, dynamic>{
                                '__transition_info__': TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                    child: Container(
                      width: 140.0,
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                          size: 60.0,
                        ).animateOnPageLoad(
                            animationsMap['iconOnPageLoadAnimation']!),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      'Payment Confirmed!',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displaySmallFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .displaySmallIsCustom,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      '${VerifyTransactionCall.currency(
                            containerVerifyTransactionResponse.jsonBody,
                          ) == 'NGN' ? 'N' : '\$'}${formatNumber(
                        VerifyTransactionCall.amount(
                          containerVerifyTransactionResponse.jsonBody,
                        ),
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                      )}',
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displayLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .displayLargeIsCustom,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                    child: Text(
                      'Your payment has been confirmed. It may take 1–2 min to appear in your transaction list.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
