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
  // Stores action output result for [Backend Call - Query Rows] action in adminhome widget.
  List<ProjectSummaryViewRow>? projectsummaryview;
  // Stores action output result for [Backend Call - Query Rows] action in adminhome widget.
  List<MembersTransactionsRow>? transactions;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
