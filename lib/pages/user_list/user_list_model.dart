import '/backend/supabase/supabase.dart';
import '/components/norecordfound_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/membercontactcard/membercontactcard_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'user_list_widget.dart' show UserListWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class UserListModel extends FlutterFlowModel<UserListWidget> {
  ///  Local state fields for this page.
  /// search term
  String? searchterm;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  // Pagination and caching state
  List<ChurchMembersRow> memberCache = [];
  bool isLoading = false;
  bool hasMore = true;
  int offset = 0;
  final int limit = 10;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  Future fetchNextPage({bool isRefresh = false}) async {
    if (isRefresh) {
      offset = 0;
      hasMore = true;
      memberCache = [];
    }

    if (!hasMore || isLoading) return;

    isLoading = true;

    try {
      final String? search = textController?.text;
      final results = await ChurchMembersTable().queryRows(
        queryFn: (q) {
          var query = q;
          if (search != null && search.isNotEmpty) {
            query = query.or(
                "firstname.ilike.%$search%,lastname.ilike.%$search%,phone_number.ilike.%$search%");
          }
          return query.order('id', ascending: false);
        },
        limit: limit,
        offset: offset,
      );

      if (results.length < limit) {
        hasMore = false;
      }

      memberCache.addAll(results);
      offset += limit;
    } catch (e) {
      debugPrint('Error fetching members: $e');
      hasMore = false;
    } finally {
      isLoading = false;
    }
  }
}
