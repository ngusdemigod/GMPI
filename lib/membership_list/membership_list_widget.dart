import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/components/empty_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'membership_list_model.dart';
export 'membership_list_model.dart';

class MembershipListWidget extends StatefulWidget {
  const MembershipListWidget({
    super.key,
    this.projID,
    this.projectname,
    this.paymenttype,
  });

  final String? projID;
  final String? projectname;
  final String? paymenttype;

  static String routeName = 'membershipList';
  static String routePath = '/membershipList';

  @override
  State<MembershipListWidget> createState() => _MembershipListWidgetState();
}

class _MembershipListWidgetState extends State<MembershipListWidget> {
  late MembershipListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MembershipListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().Color2 = Color(0x00000000);
      safeSetState(() {});
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x2B4B39EF), Color(0x060FD770)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(1.0, -1.0),
              end: AlignmentDirectional(-1.0, 1.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32.0,
                      ),
                    ),
                    Text(
                      'Select a partnership',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
                Expanded(
                  flex: 1,
                  child: FutureBuilder<List<PartnershipPLANSRow>>(
                    future: PartnershipPLANSTable().queryRows(
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
                      List<PartnershipPLANSRow> columnPartnershipPLANSRowList =
                          snapshot.data!;

                      if (columnPartnershipPLANSRowList.isEmpty) {
                        return const Center(child: EmptyWidget());
                      }

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              columnPartnershipPLANSRowList.length,
                              (columnIndex) {
                            final columnPartnershipPLANSRow =
                                columnPartnershipPLANSRowList[columnIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 16.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    EnteramountWidget.routeName,
                                    queryParameters: {
                                      'projID': serializeParam(
                                        columnPartnershipPLANSRow.id,
                                        ParamType.String,
                                      ),
                                      'projectname': serializeParam(
                                        columnPartnershipPLANSRow.title,
                                        ParamType.String,
                                      ),
                                      'paymenttype': serializeParam(
                                        'membership',
                                        ParamType.String,
                                      ),
                                      'high': serializeParam(
                                        columnPartnershipPLANSRow.amountHIGH,
                                        ParamType.int,
                                      ),
                                      'low': serializeParam(
                                        columnPartnershipPLANSRow.amountLOW,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Monthly plan',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              columnPartnershipPLANSRow.title,
                                              'partnership name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              columnPartnershipPLANSRow
                                                  .description,
                                              '.',
                                            ),
                                            maxLines: 3,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.moneyCheck,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 16.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  '${'${_model.currency == 'NGN' ? 'N' : '\$'}${formatNumber(
                                                    columnPartnershipPLANSRow
                                                        .amountLOW,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .periodDecimal,
                                                  )}'} - ${'${_model.currency == 'NGN' ? 'N' : '\$'}${formatNumber(
                                                    columnPartnershipPLANSRow
                                                        .amountHIGH,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .periodDecimal,
                                                  )}'}',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).addToStart(SizedBox(height: 32.0)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
