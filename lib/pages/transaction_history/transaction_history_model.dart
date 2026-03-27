import '/backend/supabase/supabase.dart';
import '/components/empty_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'transaction_history_widget.dart' show TransactionHistoryWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionHistoryModel
    extends FlutterFlowModel<TransactionHistoryWidget> {
  ///  Local state fields for this page.

  String tab = 'all';

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchfiled widget.
  FocusNode? searchfiledFocusNode;
  TextEditingController? searchfiledTextController;
  String? Function(BuildContext, String?)? searchfiledTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchfiledFocusNode?.dispose();
    searchfiledTextController?.dispose();
  }
}
