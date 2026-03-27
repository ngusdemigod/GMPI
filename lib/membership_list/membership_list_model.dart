import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'membership_list_widget.dart' show MembershipListWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MembershipListModel extends FlutterFlowModel<MembershipListWidget> {
  ///  Local state fields for this page.

  double? usdAmount = 0.0;

  int? ngnAmount = 0;

  int? amount;

  String? currency = 'NGN';

  int? rate;

  double? usdDB = 0.0;

  double? ngnDB = 0.0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
