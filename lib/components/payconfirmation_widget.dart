import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
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
import 'package:webviewx_plus/webviewx_plus.dart';
import 'payconfirmation_model.dart';
export 'payconfirmation_model.dart';

class PayconfirmationWidget extends StatefulWidget {
  const PayconfirmationWidget({
    super.key,
    required this.amount,
    required this.currency,
    required this.projectid,
    required this.church,
    required this.projectname,
    required this.paymenttype,
  });

  final int? amount;
  final String? currency;
  final String? projectid;
  final String? church;
  final String? projectname;
  final String? paymenttype;

  @override
  State<PayconfirmationWidget> createState() => _PayconfirmationWidgetState();
}

class _PayconfirmationWidgetState extends State<PayconfirmationWidget>
    with TickerProviderStateMixin {
  late PayconfirmationModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayconfirmationModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(10.000000000000014, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 500.0,
      height: MediaQuery.sizeOf(context).height * 0.4,
      constraints: BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Payment Confirmation',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineSmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineSmallIsCustom,
                        ),
                  ),
                  Text(
                    'Review the details below ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.network(
                                'https://static.vecteezy.com/system/resources/thumbnails/003/337/584/small/default-avatar-photo-placeholder-profile-icon-vector.jpg',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'You',
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            '${widget!.currency}${formatNumber(
                              widget!.amount,
                              formatType: FormatType.custom,
                              format: '#,###',
                              locale: '',
                            )}',
                            'N0.00',
                          ),
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 120.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                              ),
                            ),
                            Container(
                              width: 44.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0x0B000000),
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.keyboard_double_arrow_right_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 32.0,
                              ).animateOnPageLoad(
                                  animationsMap['iconOnPageLoadAnimation']!),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0x710FD770),
                              width: 2.0,
                            ),
                          ),
                          child: Icon(
                            FFIcons.kpackageBox02,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.projectname,
                            'Freewill donation',
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'close',
                    options: FFButtonOptions(
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      hoverColor: FlutterFlowTheme.of(context).alternate,
                      hoverBorderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      hoverTextColor: FlutterFlowTheme.of(context).primaryText,
                      hoverElevation: 3.0,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      if (widget!.paymenttype == 'membership') {
                        _model.createsubscriptionpayment =
                            await CreatePaystackSubscriptionCall.call(
                          amount: (widget!.amount!),
                          interval: 'monthly',
                          currency: FFAppState().currency,
                          email: currentUserEmail,
                          churchId: FFAppState().partnershipUUID,
                          memberId: currentUserUid,
                          transactionType: 'membership',
                          planName: widget!.projectname,
                          planId: widget!.projectid,
                          startDate: getCurrentTimestamp.toString(),
                        );

                        if ((_model.createsubscriptionpayment?.succeeded ??
                            true)) {
                          context.pushNamed(
                            PaymentprocessWidget.routeName,
                            queryParameters: {
                              'url': serializeParam(
                                CreatePaystackSubscriptionCall.url(
                                  (_model.createsubscriptionpayment?.jsonBody ??
                                      ''),
                                ),
                                ParamType.String,
                              ),
                              'projectID': serializeParam(
                                widget!.projectid,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                (_model.createsubscriptionpayment?.statusCode ??
                                        200)
                                    .toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }
                      } else if (widget!.paymenttype == 'freewill') {
                        _model.freewill =
                            await InitializeFreewillGivingCall.call(
                          email: currentUserEmail,
                          amount: (widget!.amount!) * 100,
                          currency: FFAppState().currency,
                          churchId: FFAppState().partnershipUUID,
                          memberId: currentUserUid,
                          transactionType: 'freewill',
                        );

                        if ((_model.freewill?.succeeded ?? true)) {
                          context.pushNamed(
                            PaymentprocessWidget.routeName,
                            queryParameters: {
                              'url': serializeParam(
                                InitializeFreewillGivingCall.url(
                                  (_model.freewill?.jsonBody ?? ''),
                                ),
                                ParamType.String,
                              ),
                              'projectID': serializeParam(
                                InitializeFreewillGivingCall.ref(
                                  (_model.freewill?.jsonBody ?? ''),
                                ),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                (_model.freewill?.succeeded ?? true).toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('error'),
                                      content: Text(
                                          (_model.freewill?.bodyText ?? '')),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Confirm'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ) ??
                              false;
                        }
                      } else {
                        _model.ini = await InitializeTransactionCall.call(
                          email: currentUserEmail,
                          amount: (widget!.amount!) * 100,
                          projectId: widget!.projectid,
                          currency: widget!.currency == 'N' ? 'NGN' : 'USD',
                          userId: currentUserUid,
                          transactionType: widget!.paymenttype,
                          churchId: FFAppState().partnershipUUID,
                        );

                        if ((_model.ini?.succeeded ?? true)) {
                          context.pushNamed(
                            PaymentprocessWidget.routeName,
                            queryParameters: {
                              'url': serializeParam(
                                InitializeTransactionCall.authURL(
                                  (_model.ini?.jsonBody ?? ''),
                                ),
                                ParamType.String,
                              ),
                              'projectID': serializeParam(
                                widget!.projectid,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                (_model.ini?.statusCode ?? 200).toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }
                      }

                      safeSetState(() {});
                    },
                    text: 'Proceed',
                    options: FFButtonOptions(
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ].divide(SizedBox(height: 4.0)).addToEnd(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
