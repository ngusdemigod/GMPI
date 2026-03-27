import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_proj_widget.dart' show CreateProjWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProjModel extends FlutterFlowModel<CreateProjWidget> {
  ///  Local state fields for this component.

  DateTime? start;

  DateTime? end;

  double? amount;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataImg = false;
  FFUploadedFile uploadedLocalFile_uploadDataImg =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for tartgetamount widget.
  FocusNode? tartgetamountFocusNode;
  TextEditingController? tartgetamountTextController;
  String? Function(BuildContext, String?)? tartgetamountTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (Get upload URL)] action in Button widget.
  ApiCallResponse? imagepublish;
  // Stores action output result for [Backend Call - API (Upload to bucket)] action in Button widget.
  ApiCallResponse? upload2bucketpublish;
  // Stores action output result for [Backend Call - API (Get upload URL)] action in Button widget.
  ApiCallResponse? image;
  // Stores action output result for [Backend Call - API (Upload to bucket)] action in Button widget.
  ApiCallResponse? upload2bucket;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    tartgetamountFocusNode?.dispose();
    tartgetamountTextController?.dispose();
  }
}
