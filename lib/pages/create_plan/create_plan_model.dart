import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'create_plan_widget.dart' show CreatePlanWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePlanModel extends FlutterFlowModel<CreatePlanWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode1;
  TextEditingController? projectNameTextController1;
  String? Function(BuildContext, String?)? projectNameTextController1Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode2;
  TextEditingController? projectNameTextController2;
  String? Function(BuildContext, String?)? projectNameTextController2Validator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode3;
  TextEditingController? projectNameTextController3;
  String? Function(BuildContext, String?)? projectNameTextController3Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode1?.dispose();
    projectNameTextController1?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    projectNameFocusNode2?.dispose();
    projectNameTextController2?.dispose();

    projectNameFocusNode3?.dispose();
    projectNameTextController3?.dispose();
  }
}
