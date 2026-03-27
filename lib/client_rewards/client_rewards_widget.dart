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
import 'dart:math' as math;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'client_rewards_model.dart';
export 'client_rewards_model.dart';

class ClientRewardsWidget extends StatefulWidget {
  const ClientRewardsWidget({super.key});

  static String routeName = 'ClientRewards';
  static String routePath = '/clientRewards';

  @override
  State<ClientRewardsWidget> createState() => _ClientRewardsWidgetState();
}

class _ClientRewardsWidgetState extends State<ClientRewardsWidget>
    with TickerProviderStateMixin {
  late ClientRewardsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientRewardsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 700,
        ),
      );
      _model.containerHT = 330;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 1100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 620.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1000.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 680.0.ms,
            duration: 1560.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 680.0.ms,
            duration: 380.0.ms,
            begin: 0.1,
            end: 0.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOutQuint,
            delay: 620.0.ms,
            duration: 1040.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 960.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 960.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 960.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 960.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: FutureBuilder<List<RewardSummaryViewRow>>(
        future: RewardSummaryViewTable().queryRows(
          queryFn: (q) => q,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: SpinKitFadingCube(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
            );
          }
          List<RewardSummaryViewRow> containerRewardSummaryViewRowList =
              snapshot.data!;

          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x2B4B39EF), Color(0x060FD770)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(1.0, -1.0),
                end: AlignmentDirectional(-1.0, 1.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 394.8,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(200.0),
                            bottomRight: Radius.circular(200.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 900),
                            curve: Curves.elasticOut,
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: _model.containerHT?.toDouble(),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                alignment: AlignmentDirectional(0.0, 0.0),
                                image: Image.asset(
                                  'assets/images/STUDIO_NA_EO_.jpg',
                                ).image,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(200.0),
                                bottomRight: Radius.circular(200.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                      size: 34.0,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'iconOnPageLoadAnimation']!),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Text(
                                    'Partner\nRewards',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Colors.white,
                                          fontSize: 44.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          lineHeight: 1.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation1']!),
                                Text(
                                  'Our own way of saying thanks',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ].addToStart(SizedBox(height: 40.0)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 179.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/3d--closed-black-gift-box.webp',
                                width: 218.1,
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, 1.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.886,
                    height: 200.5,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Builder(
                      builder: (context) {
                        final rewardslist = containerRewardSummaryViewRowList
                            .where((e) =>
                                (e.isOpened == false) || (e.isOpened == false))
                            .toList();
                        if (rewardslist.isEmpty) {
                          return NonewrewardWidget();
                        }

                        return FlutterFlowSwipeableStack(
                          onSwipeFn: (rewardslistIndex) async {
                            final rewardslistItem =
                                rewardslist[rewardslistIndex];
                            _model.currentRewardid = rewardslistItem.rewardId;
                            safeSetState(() {});
                            _model.query = await UserRewardsTable().queryRows(
                              queryFn: (q) => q.eqOrNull(
                                'reward_id',
                                _model.currentRewardid,
                              ),
                            );
                            if (_model.query != null &&
                                (_model.query)!.isNotEmpty) {
                              // update intent
                              await UserRewardsTable().update(
                                data: {
                                  'user_id': currentUserUid,
                                  'reward_id': rewardslistItem.rewardId,
                                  'is_opened': false,
                                  'created_at': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                  'church_id': FFAppState().partnershipUUID,
                                  'viewed_at': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'reward_id',
                                  _model.currentRewardid,
                                ),
                              );
                            } else {
                              // create intent
                              _model.createintent =
                                  await UserRewardsTable().insert({
                                'user_id': currentUserUid,
                                'reward_id': rewardslistItem.rewardId,
                                'is_opened': false,
                                'created_at': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'church_id': FFAppState().partnershipUUID,
                                'viewed_at': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                              });
                            }

                            safeSetState(() {});
                          },
                          onLeftSwipe: (rewardslistIndex) {},
                          onRightSwipe: (rewardslistIndex) {},
                          onUpSwipe: (rewardslistIndex) {},
                          onDownSwipe: (rewardslistIndex) {},
                          itemBuilder: (context, rewardslistIndex) {
                            final rewardslistItem =
                                rewardslist[rewardslistIndex];
                            return Builder(
                              builder: (context) {
                                if (rewardslistItem.rewardType == 'ticket') {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 183.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF49D990),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Opacity(
                                              opacity: 0.1,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Wallpaper_(1).jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Container(
                                                width: 18.1,
                                                height: 45.4,
                                                decoration: BoxDecoration(
                                                  color: Color(0x5DFFFFFF),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(100.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(100.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 18.1,
                                              height: 45.4,
                                              decoration: BoxDecoration(
                                                color: Color(0x5DFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(100.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(100.0),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x77FFFFFF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      2.0,
                                                                      10.0,
                                                                      2.0),
                                                          child: Text(
                                                            'Exclusive Event ticket',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF044F28),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          rewardslistItem.title,
                                                          'title',
                                                        ),
                                                        maxLines: 2,
                                                        minFontSize: 14.0,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLargeIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  4.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          rewardslistItem
                                                              .description,
                                                          'description',
                                                        ),
                                                        maxLines: 2,
                                                        minFontSize: 14.0,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              lineHeight: 1.2,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            RewarddetailsWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'id':
                                                                  serializeParam(
                                                                rewardslistItem
                                                                    .rewardId,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          'Tap to unlock',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                } else if (rewardslistItem.rewardType ==
                                    'pdf') {
                                  return Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.736,
                                    height: 183.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE8C06B),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      children: [
                                        Opacity(
                                          opacity: 0.2,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Wallpaper_(1).jpg',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              fit: BoxFit.none,
                                              alignment: Alignment(0.0, 1.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Container(
                                            width: 18.09,
                                            height: 45.4,
                                            decoration: BoxDecoration(
                                              color: Color(0x5DFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(100.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(100.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 18.1,
                                          height: 45.4,
                                          decoration: BoxDecoration(
                                            color: Color(0x5DFFFFFF),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight:
                                                  Radius.circular(100.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(100.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsets.all(20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            RewarddetailsWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'id':
                                                                  serializeParam(
                                                                rewardslistItem
                                                                    .rewardId,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Transform
                                                                    .rotate(
                                                                  angle: 18.0 *
                                                                      (math.pi /
                                                                          180),
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .kfileDoc,
                                                                    color: Color(
                                                                        0xC4000000),
                                                                    size: 34.0,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x77FFFFFF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            2.0,
                                                                            10.0,
                                                                            2.0),
                                                                    child: Text(
                                                                      'PDF',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF7D4B05),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rewardslistItem
                                                                        .title,
                                                                    'title',
                                                                  ),
                                                                  minFontSize:
                                                                      14.0,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        lineHeight:
                                                                            1.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rewardslistItem
                                                                        .description,
                                                                    'description',
                                                                  ),
                                                                  maxLines: 2,
                                                                  minFontSize:
                                                                      14.0,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleLargeFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        lineHeight:
                                                                            1.2,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    RewarddetailsWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'id':
                                                                          serializeParam(
                                                                        rewardslistItem
                                                                            .rewardId,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Text(
                                                                  'Tap to unlock',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else if (rewardslistItem.rewardType ==
                                    'content') {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        RewarddetailsWidget.routeName,
                                        queryParameters: {
                                          'id': serializeParam(
                                            rewardslistItem.rewardId,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.736,
                                      height: 145.9,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: Color(0x1C000000),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Opacity(
                                            opacity: 0.2,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Wallpaper_(1).jpg',
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                fit: BoxFit.none,
                                                alignment: Alignment(1.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Container(
                                              width: 18.1,
                                              height: 45.4,
                                              decoration: BoxDecoration(
                                                color: Color(0x7EFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(100.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(100.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 18.1,
                                            height: 45.4,
                                            decoration: BoxDecoration(
                                              color: Color(0x7EFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(100.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight:
                                                    Radius.circular(100.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Transform
                                                                    .rotate(
                                                                  angle: 13.0 *
                                                                      (math.pi /
                                                                          180),
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .kbookmark,
                                                                    color: Color(
                                                                        0xC4000000),
                                                                    size: 34.0,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFF303030),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            2.0,
                                                                            10.0,
                                                                            2.0),
                                                                    child: Text(
                                                                      'Post Contemt',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rewardslistItem
                                                                        .title,
                                                                    'title',
                                                                  ),
                                                                  minFontSize:
                                                                      14.0,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        lineHeight:
                                                                            1.2,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rewardslistItem
                                                                        .description,
                                                                    'description',
                                                                  ),
                                                                  maxLines: 2,
                                                                  minFontSize:
                                                                      14.0,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleLargeFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        lineHeight:
                                                                            1.2,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    RewarddetailsWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'id':
                                                                          serializeParam(
                                                                        rewardslistItem
                                                                            .rewardId,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Text(
                                                                  'Tap to unlock',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 0.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        RewarddetailsWidget.routeName,
                                        queryParameters: {
                                          'id': serializeParam(
                                            rewardslistItem.rewardId,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.736,
                                      height: 145.9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF6EB4EA),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Opacity(
                                            opacity: 0.2,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Wallpaper_(1).jpg',
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                fit: BoxFit.none,
                                                alignment:
                                                    Alignment(-1.0, -1.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Container(
                                              width: 18.1,
                                              height: 45.4,
                                              decoration: BoxDecoration(
                                                color: Color(0x7EFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(100.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(100.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 18.1,
                                            height: 45.4,
                                            decoration: BoxDecoration(
                                              color: Color(0x7EFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(100.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight:
                                                    Radius.circular(100.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Transform
                                                                        .rotate(
                                                                      angle: 13.0 *
                                                                          (math.pi /
                                                                              180),
                                                                      child:
                                                                          Icon(
                                                                        FFIcons
                                                                            .kvideoMinus,
                                                                        color: Color(
                                                                            0xC4000000),
                                                                        size:
                                                                            34.0,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xCCFFFFFF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            2.0,
                                                                            10.0,
                                                                            2.0),
                                                                    child: Text(
                                                                      'Media',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF05467D),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rewardslistItem
                                                                        .title,
                                                                    'title',
                                                                  ),
                                                                  minFontSize:
                                                                      14.0,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleLargeFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        lineHeight:
                                                                            1.2,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    rewardslistItem
                                                                        .description,
                                                                    'description',
                                                                  ),
                                                                  maxLines: 2,
                                                                  minFontSize:
                                                                      14.0,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleLargeFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        lineHeight:
                                                                            1.2,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    RewarddetailsWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'id':
                                                                          serializeParam(
                                                                        rewardslistItem
                                                                            .rewardId,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Text(
                                                                  'Tap to unlock',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            );
                          },
                          itemCount: rewardslist.length,
                          controller: _model.swipeableStackController,
                          loop: true,
                          cardDisplayCount: 5,
                          scale: 0.93,
                          cardPadding: EdgeInsets.all(0.0),
                          backCardOffset: const Offset(17.0, 13.0),
                          allowedSwipeDirection:
                              AllowedSwipeDirection.symmetric(horizontal: true),
                        );
                      },
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 0.0, 0.0),
                      child: Text(
                        'Unlocked rewards',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation3']!),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: FutureBuilder<List<RewardSummaryViewRow>>(
                        future: RewardSummaryViewTable().queryRows(
                          queryFn: (q) => q.eqOrNull(
                            'is_opened',
                            true,
                          ),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 24.0,
                                height: 24.0,
                                child: SpinKitFadingCube(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                              ),
                            );
                          }
                          List<RewardSummaryViewRow>
                              columnRewardSummaryViewRowList = snapshot.data!;

                          if (columnRewardSummaryViewRowList.isEmpty) {
                            return Center(
                              child: NorecordtextWidget(),
                            );
                          }

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                    columnRewardSummaryViewRowList.length,
                                    (columnIndex) {
                              final columnRewardSummaryViewRow =
                                  columnRewardSummaryViewRowList[columnIndex];
                              return Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          RewarddetailsWidget.routeName,
                                          queryParameters: {
                                            'id': serializeParam(
                                              columnRewardSummaryViewRow
                                                  .rewardId,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 16.0, 12.0, 15.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    RewarddetailsWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'id': serializeParam(
                                                        columnRewardSummaryViewRow
                                                            .rewardId,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnRewardSummaryViewRow
                                                                      .title,
                                                                  'Title',
                                                                ),
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelLargeIsCustom,
                                                                    ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnRewardSummaryViewRow
                                                                      .description,
                                                                  'description',
                                                                ),
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 8.0)),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Container(
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x1D0FD770),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Reward type',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodySmallFamily,
                                                                            color:
                                                                                Color(0xFF07944C),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnRewardSummaryViewRow
                                                                          .rewardType,
                                                                      'null',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.0,
                                                                child:
                                                                    VerticalDivider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: Color(
                                                                      0x2E0FD770),
                                                                ),
                                                              ),
                                                              FutureBuilder<
                                                                  List<
                                                                      UserRewardsRow>>(
                                                                future: UserRewardsTable()
                                                                    .querySingleRow(
                                                                  queryFn: (q) =>
                                                                      q.eqOrNull(
                                                                    'reward_id',
                                                                    columnRewardSummaryViewRow
                                                                        .rewardId,
                                                                  ),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            24.0,
                                                                        height:
                                                                            24.0,
                                                                        child:
                                                                            SpinKitFadingCube(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<UserRewardsRow>
                                                                      textUserRewardsRowList =
                                                                      snapshot
                                                                          .data!;

                                                                  final textUserRewardsRow = textUserRewardsRowList
                                                                          .isNotEmpty
                                                                      ? textUserRewardsRowList
                                                                          .first
                                                                      : null;

                                                                  return Text(
                                                                    dateTimeFormat(
                                                                        "relative",
                                                                        textUserRewardsRow!
                                                                            .openedAt!),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  );
                                                                },
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                                .divide(SizedBox(height: 8.0))
                                .addToEnd(SizedBox(height: 32.0)),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!);
                        },
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 7.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
