import '/backend/supabase/supabase.dart';
import '/components/list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/components/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'projects_model.dart';
export 'projects_model.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({super.key});

  static String routeName = 'Projects';
  static String routePath = '/Projects';

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  late ProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Text(
          'All projects',
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleSmallIsCustom,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: FutureBuilder<List<ProjectSummaryViewRow>>(
                future: ProjectSummaryViewTable().queryRows(
                  queryFn: (q) => q.order('created_at'),
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
                  List<ProjectSummaryViewRow> columnProjectSummaryViewRowList =
                      snapshot.data!;

                  if (columnProjectSummaryViewRowList.isEmpty) {
                    return const Center(child: EmptyWidget());
                  }

                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(columnProjectSummaryViewRowList.length,
                              (columnIndex) {
                        final columnProjectSummaryViewRow =
                            columnProjectSummaryViewRowList[columnIndex];
                        return FutureBuilder<List<ProjectsRow>>(
                          future: ProjectsTable().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'id',
                              columnProjectSummaryViewRow.projectId,
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
                            List<ProjectsRow> listProjectsRowList =
                                snapshot.data!;

                            final listProjectsRow =
                                listProjectsRowList.isNotEmpty
                                    ? listProjectsRowList.first
                                    : null;

                            return ListWidget(
                              key: Key(
                                  'Keyl9o_${columnIndex}_of_${columnProjectSummaryViewRowList.length}'),
                              title: columnProjectSummaryViewRow.projectTitle!,
                              desc: columnProjectSummaryViewRow.description!,
                              amount: formatNumber(
                                columnProjectSummaryViewRow.targetAmount!,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.automatic,
                                currency: 'N',
                              ),
                              id: columnProjectSummaryViewRow.projectId!,
                              featuredimage: listProjectsRow!.featuredImage!,
                              raised: columnProjectSummaryViewRow.totalRaised!,
                            );
                          },
                        );
                      }).divide(SizedBox(height: 8.0)),
                    ),
                  );
                },
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
