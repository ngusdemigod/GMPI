import '/backend/supabase/supabase.dart';
import '/components/empty_widget.dart';
import '/components/transaction_list_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transaction_history_model.dart';
export 'transaction_history_model.dart';

class TransactionHistoryWidget extends StatefulWidget {
  const TransactionHistoryWidget({super.key});

  static String routeName = 'TransactionHistory';
  static String routePath = '/transactionHistory';

  @override
  State<TransactionHistoryWidget> createState() =>
      _TransactionHistoryWidgetState();
}

class _TransactionHistoryWidgetState extends State<TransactionHistoryWidget> {
  late TransactionHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionHistoryModel());

    _model.searchfiledTextController ??= TextEditingController();
    _model.searchfiledFocusNode ??= FocusNode();
    _model.searchfiledFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _model.fetchNextTransactions(isRefresh: true);
      safeSetState(() {});
    });
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
      backgroundColor: Color(0xFFECECEC),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 32.0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
      ),
      body: Builder(
        builder: (context) {
          return Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Transactions',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'View all member transactions',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.searchfiledTextController,
                            focusNode: _model.searchfiledFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.searchfiledTextController',
                              Duration(milliseconds: 300),
                              () async {
                                await _model.fetchNextTransactions(
                                    isRefresh: true);
                                safeSetState(() {});
                              },
                            ),
                            decoration: InputDecoration(
                              labelText: 'Find transaction by email or name...',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              prefixIcon: Icon(
                                Icons.search_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowChoiceChips(
                          options: [
                            ChipData('all'),
                            ...['partnership', 'projects', 'freewill']
                                .map((label) => ChipData(label))
                                .toList(),
                          ],
                          onChanged: (val) async {
                            safeSetState(() =>
                                _model.choiceChipsValue = val?.firstOrNull);
                            _model.tab = _model.choiceChipsValue ?? 'all';
                            await _model.fetchNextTransactions(isRefresh: true);
                            safeSetState(() {});
                          },
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: Colors.white,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          chipSpacing: 8.0,
                          multiselect: false,
                          initialized: _model.choiceChipsValue != null,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(['all']),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: _model.transactionCache.isEmpty &&
                            !_model.isLoadingTransactions
                        ? Center(child: EmptyWidget())
                        : ListView(
                            children: [
                              ..._model.transactionCache.map((transaction) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        RecieptWidget.routeName,
                                        queryParameters: {
                                          'id': serializeParam(
                                            transaction.transactionId,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: TransactionListWidget(
                                      title: valueOrDefault<String>(
                                        transaction.projectTitle ??
                                            transaction.transactionType,
                                        'Transaction',
                                      ),
                                      user: valueOrDefault<String>(
                                        transaction.memberFullName,
                                        'User',
                                      ),
                                      partnership: valueOrDefault<String>(
                                        transaction.partnershipPlan,
                                        'Not a partner',
                                      ),
                                      status: valueOrDefault<String>(
                                        transaction.transactionStatus,
                                        'failed',
                                      ),
                                      amount: valueOrDefault<double>(
                                        transaction.amount,
                                        0.0,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              if (_model.hasMoreTransactions)
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Center(
                                    child: _model.isLoadingTransactions
                                        ? SpinKitThreeBounce(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          )
                                        : FFButtonWidget(
                                            onPressed: () async {
                                              await _model
                                                  .fetchNextTransactions();
                                              safeSetState(() {});
                                            },
                                            text: 'Load More',
                                            options: FFButtonOptions(
                                              width: 150.0,
                                              height: 40.0,
                                              padding: EdgeInsets.zero,
                                              iconPadding: EdgeInsets.zero,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 2.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                  ),
                                ),
                              if (_model.isLoadingTransactions &&
                                  _model.transactionCache.isEmpty)
                                Center(
                                  child: SpinKitThreeBounce(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ),
                            ],
                          ),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          );
        },
      ),
    );
  }
}
