import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/nonewreward_widget.dart';
import '/components/norecordtext_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'client_rewards_widget.dart' show ClientRewardsWidget;
import 'dart:math' as math;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClientRewardsModel extends FlutterFlowModel<ClientRewardsWidget> {
  ///  Local state fields for this page.

  int? containerHT = 0;

  String? currentRewardid;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Stores action output result for [Backend Call - Query Rows] action in SwipeableStack widget.
  List<UserRewardsRow>? query;
  // Stores action output result for [Backend Call - Update Row(s)] action in SwipeableStack widget.
  List<UserRewardsRow>? updateintent;
  // Stores action output result for [Backend Call - Insert Row] action in SwipeableStack widget.
  UserRewardsRow? createintent;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
