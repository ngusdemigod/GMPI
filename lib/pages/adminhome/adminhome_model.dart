import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/emptynotification_widget.dart';
import '/components/transaction_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'adminhome_widget.dart' show AdminhomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminhomeModel extends FlutterFlowModel<AdminhomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in adminhome widget.
  List<ChurchesRow>? churchesquery;

  // Pagination state for Projects
  List<ProjectSummaryViewRow> projectCache = [];
  int projectOffset = 0;
  bool projectLoading = false;
  bool projectHasMore = true;
  final int projectLimit = 10;

  // Pagination state for Transactions
  List<MembersTransactionsRow> transactionCache = [];
  int transactionOffset = 0;
  bool transactionLoading = false;
  bool transactionHasMore = true;
  final int transactionLimit = 10;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  Future fetchNextProjects() async {
    if (projectLoading || !projectHasMore) return;
    projectLoading = true;
    final newRows = await ProjectSummaryViewTable().queryRows(
      queryFn: (q) => q,
      limit: projectLimit,
      offset: projectOffset,
    );
    if (newRows.length < projectLimit) {
      projectHasMore = false;
    }
    projectCache.addAll(newRows);
    projectOffset += newRows.length;
    projectLoading = false;
  }

  Future fetchNextTransactions() async {
    if (transactionLoading || !transactionHasMore) return;
    transactionLoading = true;
    final newRows = await MembersTransactionsTable().queryRows(
      queryFn: (q) => q.order('paid_at', ascending: false),
      limit: transactionLimit,
      offset: transactionOffset,
    );
    if (newRows.length < transactionLimit) {
      transactionHasMore = false;
    }
    transactionCache.addAll(newRows);
    transactionOffset += newRows.length;
    transactionLoading = false;
  }
}
