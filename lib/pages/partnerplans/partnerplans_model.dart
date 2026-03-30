import '/backend/supabase/supabase.dart';
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
import 'partnerplans_widget.dart' show PartnerplansWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PartnerplansModel extends FlutterFlowModel<PartnerplansWidget> {
  ///  State fields for stateful widgets in this page.

  // Cache for partnership plans
  List<PartnershipPlanStatusSummaryRow>? plansCache;
  bool isLoading = false;
  int offset = 0;
  bool hasMore = true;
  final int limit = 10;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  // Action: fetch next page
  Future fetchNextPage() async {
    if (isLoading || !hasMore) return;
    isLoading = true;

    try {
      final newRows = await PartnershipPlanStatusSummaryTable().queryRows(
        queryFn: (q) => q.offset(offset),
        limit: limit,
      );

      if (newRows.length < limit) {
        hasMore = false;
      }

      plansCache = [...(plansCache ?? []), ...newRows];
      offset += newRows.length;
    } catch (e) {
      print('Error fetching partner plans: $e');
    } finally {
      isLoading = false;
    }
  }

  Future refresh() async {
    plansCache = null;
    offset = 0;
    hasMore = true;
    await fetchNextPage();
  }
}
