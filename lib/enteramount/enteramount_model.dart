import '/backend/supabase/supabase.dart';
import '/components/payconfirmation_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'enteramount_widget.dart' show EnteramountWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EnteramountModel extends FlutterFlowModel<EnteramountWidget> {
  ///  Local state fields for this page.

  double? usdAmount = 0.0;

  int? ngnAmount = 0;

  int amount = 0;

  String? currency = 'NGN';

  int? rate;

  double? usdDB = 0.0;

  double? ngnDB = 0.0;

  double? highUSD;

  double? lowUSD;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in enteramount widget.
  List<SettingsRow>? query;
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
