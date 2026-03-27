import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
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
import 'paymentprocess_model.dart';
export 'paymentprocess_model.dart';

class PaymentprocessWidget extends StatefulWidget {
  const PaymentprocessWidget({
    super.key,
    required this.url,
    required this.projectID,
  });

  final String? url;
  final String? projectID;

  static String routeName = 'paymentprocess';
  static String routePath = '/paymentprocess';

  @override
  State<PaymentprocessWidget> createState() => _PaymentprocessWidgetState();
}

class _PaymentprocessWidgetState extends State<PaymentprocessWidget>
    with TickerProviderStateMixin {
  late PaymentprocessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentprocessModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 910.0.ms,
            begin: 0.0,
            end: 1.0,
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 0.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.close_sharp,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        AdminhomeWidget.routeName,
                        extra: <String, dynamic>{
                          '__transition_info__': TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.topToBottom,
                          ),
                        },
                      );
                    },
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
              Expanded(
                flex: 1,
                child: FlutterFlowWebView(
                  content: widget!.url!,
                  bypass: false,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
