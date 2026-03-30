import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/create_rewards/create_rewards_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'rewards_widget.dart' show RewardsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RewardsModel extends FlutterFlowModel<RewardsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  // Pagination state
  List<RewardsWithStatsRow> rewardCache = [];
  int offset = 0;
  bool loading = false;
  bool hasMore = true;
  final int limit = 10;

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
      rewardCache.clear();
      hasMore = true;
    }

    final String? currentSearch = textController?.text;
    final newRows = await RewardsWithStatsTable().queryRows(
      queryFn: (q) {
        var query = q;
        if (currentSearch != null && currentSearch.isNotEmpty) {
          query = query.ilike('title', '%$currentSearch%');
        }
        return query.order('created_at', ascending: false);
      },
      limit: limit,
      offset: offset,
    );

    if (newRows.length < limit) {
      hasMore = false;
    }
    rewardCache.addAll(newRows);
    offset += newRows.length;
    loading = false;
  }
}
