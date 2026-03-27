import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/edit_plan/edit_plan_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'plandetails_widget.dart' show PlandetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PlandetailsModel extends FlutterFlowModel<PlandetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in plandetails widget.
  List<UserRewardsRow>? query;
  // Stores action output result for [Backend Call - Update Row(s)] action in plandetails widget.
  List<UserRewardsRow>? updaterecord;
  // Stores action output result for [Backend Call - Insert Row] action in plandetails widget.
  UserRewardsRow? createintent;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
