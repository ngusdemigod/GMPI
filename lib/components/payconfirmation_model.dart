import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'payconfirmation_widget.dart' show PayconfirmationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PayconfirmationModel extends FlutterFlowModel<PayconfirmationWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (create paystack subscription)] action in Button widget.
  ApiCallResponse? createsubscriptionpayment;
  // Stores action output result for [Backend Call - API (initialize freewill giving)] action in Button widget.
  ApiCallResponse? freewill;
  // Stores action output result for [Backend Call - API (initialize transaction)] action in Button widget.
  ApiCallResponse? ini;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
