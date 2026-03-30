import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/norecordfound_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/create_proj/create_proj_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'listofprojects_widget.dart' show ListofprojectsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ListofprojectsModel extends FlutterFlowModel<ListofprojectsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  // Pagination and caching state
  List<ProjectsRow> projectCache = [];
  bool loading = false;
  int offset = 0;
  final int limit = 10;
  bool hasMore = true;

  Future<void> fetchNextPage({bool isRefresh = false}) async {
    if (isRefresh) {
      offset = 0;
      hasMore = true;
      projectCache.clear();
    }

    if (!hasMore || loading) return;

    loading = true;
    try {
      final searchTerm = textController?.text ?? '';
      final rows = await ProjectsTable().queryRows(
        queryFn: (q) {
          var query = q;
          if (searchTerm.isNotEmpty) {
            query = query.ilike('title', '%$searchTerm%');
          }
          return query.order('created_at', ascending: false);
        },
        limit: limit,
        offset: offset,
      );

      if (rows.length < limit) {
        hasMore = false;
      }

      projectCache.addAll(rows);
      offset += rows.length;
    } finally {
      loading = false;
    }
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
