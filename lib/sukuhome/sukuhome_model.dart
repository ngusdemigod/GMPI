import '/components/choicechipscustom_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'sukuhome_widget.dart' show SukuhomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SukuhomeModel extends FlutterFlowModel<SukuhomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for choicechipscustom component.
  late ChoicechipscustomModel choicechipscustomModel;

  @override
  void initState(BuildContext context) {
    choicechipscustomModel =
        createModel(context, () => ChoicechipscustomModel());
  }

  @override
  void dispose() {
    choicechipscustomModel.dispose();
  }
}
