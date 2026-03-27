import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'textfield_widget.dart' show TextfieldWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TextfieldModel extends FlutterFlowModel<TextfieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    linkFocusNode?.dispose();
    linkTextController?.dispose();
  }
}
