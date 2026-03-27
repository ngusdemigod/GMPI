import '/chat/delete_dialog/delete_dialog_widget.dart';
import '/chat/user_list_small/user_list_small_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'chat_details_overlay_widget.dart' show ChatDetailsOverlayWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatDetailsOverlayModel
    extends FlutterFlowModel<ChatDetailsOverlayWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_ListSmall component.
  late UserListSmallModel userListSmallModel;
  // Model for deleteDialog component.
  late DeleteDialogModel deleteDialogModel;

  @override
  void initState(BuildContext context) {
    userListSmallModel = createModel(context, () => UserListSmallModel());
    deleteDialogModel = createModel(context, () => DeleteDialogModel());
  }

  @override
  void dispose() {
    userListSmallModel.dispose();
    deleteDialogModel.dispose();
  }
}
