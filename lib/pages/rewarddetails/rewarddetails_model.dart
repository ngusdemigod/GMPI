import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/updaterewards/updaterewards_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:styled_divider/styled_divider.dart';
import 'rewarddetails_widget.dart' show RewarddetailsWidget;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RewarddetailsModel extends FlutterFlowModel<RewarddetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Rewarddetails widget.
  List<UserRewardsRow>? query;
  // Stores action output result for [Backend Call - Update Row(s)] action in Rewarddetails widget.
  List<UserRewardsRow>? updaterecord;
  // Stores action output result for [Backend Call - Insert Row] action in Rewarddetails widget.
  UserRewardsRow? createintent;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
