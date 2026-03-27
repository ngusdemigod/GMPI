import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  static String routeName = 'profile';
  static String routePath = '/profile';

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.check = await MembershipSummaryViewTable().queryRows(
        queryFn: (q) => q,
      );
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
    return FutureBuilder<List<MembershipSummaryViewRow>>(
      future: MembershipSummaryViewTable().querySingleRow(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: SpinKitFadingCube(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
            ),
          );
        }
        List<MembershipSummaryViewRow> profileMembershipSummaryViewRowList =
            snapshot.data!;

        final profileMembershipSummaryViewRow =
            profileMembershipSummaryViewRowList.isNotEmpty
                ? profileMembershipSummaryViewRowList.first
                : null;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF070707),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 46.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 25.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Text(
              'My profile',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Colors.white,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).titleSmallIsCustom,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.027,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x2B4B39EF), Color(0x060FD770)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, -1.0),
                  end: AlignmentDirectional(-1.0, 1.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                valueOrDefault<String>(
                                  functions.initialsgenerator(
                                      profileMembershipSummaryViewRow?.lastname,
                                      profileMembershipSummaryViewRow
                                          ?.firstname),
                                  'AI',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 43.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FutureBuilder<List<ChurchesRow>>(
                            future: ChurchesTable().querySingleRow(
                              queryFn: (q) => q.eqOrNull(
                                'id',
                                profileMembershipSummaryViewRow?.churchId,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  ),
                                );
                              }
                              List<ChurchesRow> richTextChurchesRowList =
                                  snapshot.data!;

                              final richTextChurchesRow =
                                  richTextChurchesRowList.isNotEmpty
                                      ? richTextChurchesRowList.first
                                      : null;

                              return RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        richTextChurchesRow?.name,
                                        '[Church name]',
                                      ),
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    profileMembershipSummaryViewRow?.email,
                                    'Example@gmail.com',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                TextSpan(
                                  text: ' | ',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    profileMembershipSummaryViewRow
                                        ?.phoneNumber,
                                    '0807 xxx xxxx',
                                  ),
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ].addToStart(SizedBox(height: 32.0)),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().paystackCode = '0';
                          FFAppState().NOofprojects = 0;
                          FFAppState().plan = '0';
                          FFAppState().partnershipUUID =
                              '13f80356-63ce-46e5-a401-317a7495d549';
                          FFAppState().partnershipname = 'Your Admin Dashboard';
                          FFAppState().totaldonated = 0.0;
                          safeSetState(() {});
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth(
                              Gmpi1Widget.routeName, context.mounted);
                        },
                        text: 'Log out',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).alternate,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Color(0xFFFF0D1A),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Color(0x27000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
