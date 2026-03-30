import '/backend/supabase/supabase.dart';
import '/components/norecordfound_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/partnercontactcard/partnercontactcard_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'partnerlist_widget.dart' show PartnerlistWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PartnerlistModel extends FlutterFlowModel<PartnerlistWidget> {
  ///  Local state fields for this page.
  /// search term
  String? searchterm;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Pagination state
  List<MembershipSummaryViewRow> partnerCache = [];
  int offset = 0;
  bool loading = false;
  bool hasMore = true;
  final int limit = 10;
  String? lastSearch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  Future fetchNextPage({bool isRefresh = false}) async {
    if (loading || (!hasMore && !isRefresh)) return;
    loading = true;
    if (isRefresh) {
      offset = 0;
      partnerCache.clear();
      hasMore = true;
    }

    final String? currentSearch = textController?.text;
    final newRows = await MembershipSummaryViewTable().queryRows(
      queryFn: (q) {
        var query = q;
        if (currentSearch != null && currentSearch.isNotEmpty) {
          query = query.or(
              "firstname.ilike.${'%$currentSearch%'}, lastname.ilike.${'%$currentSearch%'}, email.ilike.${'%$currentSearch%'}");
        }
        return query;
      },
      limit: limit,
      offset: offset,
    );

    if (newRows.length < limit) {
      hasMore = false;
    }
    partnerCache.addAll(newRows);
    offset += newRows.length;
    lastSearch = currentSearch;
    loading = false;
  }
}
