import '/backend/supabase/supabase.dart';
import '/components/empty_widget.dart';
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
      backgroundColor: Color(0xFFECECEC),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
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
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
      ),
      body: FutureBuilder<List<ProjectsRow>>(
        future: ProjectsTable().queryRows(
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
          List<ProjectsRow> containerProjectsRowList = snapshot.data!;

          return Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(),
            child: FutureBuilder<List<TransactionsProjectViewRow>>(
              future: TransactionsProjectViewTable().queryRows(
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
                List<TransactionsProjectViewRow>
                    containerTransactionsProjectViewRowList = snapshot.data!;

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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Transactions',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineMediumIsCustom,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'View all member transactions',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
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
                                    () => safeSetState(() {}),
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    labelText:
                                        'Find transaction by email or name...',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    prefixIcon: Icon(
                                      Icons.search_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  validator: _model
                                      .searchfiledTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (_model.tab == 'all')
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Icon(
                                  FFIcons.kfilter02,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                              ),
                            if (_model.tab != 'all')
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.tab = 'all';
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.close_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                              ),
                            FlutterFlowChoiceChips(
                              options: containerTransactionsProjectViewRowList
                                  .map((e) => e.transactionType)
                                  .withoutNulls
                                  .toList()
                                  .unique((e) => e)
                                  .map((label) => ChipData(label))
                                  .toList(),
                              onChanged: (val) async {
                                safeSetState(() =>
                                    _model.choiceChipsValue = val?.firstOrNull);
                                _model.tab = _model.choiceChipsValue!;
                                safeSetState(() {});
                              },
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                iconColor: FlutterFlowTheme.of(context).primary,
                                iconSize: 16.0,
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                iconSize: 16.0,
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              chipSpacing: 8.0,
                              rowSpacing: 8.0,
                              multiselect: false,
                              initialized: _model.choiceChipsValue != null,
                              alignment: WrapAlignment.start,
                              controller: _model.choiceChipsValueController ??=
                                  FormFieldController<List<String>>(
                                ['all'],
                              ),
                              wrapped: true,
                            ),
                          ]
                              .divide(SizedBox(width: 8.0))
                              .addToStart(SizedBox(width: 16.0)),
                        ),
                      ),
                      if (_model.searchfiledTextController.text == null ||
                          _model.searchfiledTextController.text == '')
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      if (_model.tab == 'all') {
                                        return Builder(
                                          builder: (context) {
                                            final filter =
                                                containerTransactionsProjectViewRowList
                                                    .unique((e) =>
                                                        dateTimeFormat(
                                                            "MMMMEEEEd",
                                                            e.paidAt!))
                                                    .sortedList(
                                                        keyOf: (e) => e.paidAt!,
                                                        desc: true)
                                                    .toList();
                                            if (filter.isEmpty) {
                                              return Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                child: EmptyWidget(),
                                              );
                                            }

                                            return ListView.separated(
                                              padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                32.0,
                                              ),
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: filter.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, filterIndex) {
                                                final filterItem =
                                                    filter[filterIndex];
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                                "MMMMEEEEd",
                                                                filterItem
                                                                    .paidAt),
                                                            'Tuesday Decemeber 30',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final datetransactions = containerTransactionsProjectViewRowList
                                                            .where((e) =>
                                                                dateTimeFormat(
                                                                    "MMMMEEEEd",
                                                                    e.paidAt) ==
                                                                dateTimeFormat(
                                                                    "MMMMEEEEd",
                                                                    filterItem
                                                                        .paidAt))
                                                            .toList();

                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              datetransactions
                                                                  .length,
                                                              (datetransactionsIndex) {
                                                            final datetransactionsItem =
                                                                datetransactions[
                                                                    datetransactionsIndex];
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                      RecieptWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'id':
                                                                            serializeParam(
                                                                          filterItem
                                                                              .transactionId,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          if (filterItem.transactionStatus ==
                                                                              'success')
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x1D0FD770),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: Color(0x1B0FD770),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  'Succesful',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        color: Color(0xFF229655),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (filterItem.transactionStatus ==
                                                                              'failed')
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x1DD73D0F),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: Color(0x1BD70F0F),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  'Failed',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (filterItem.transactionStatus ==
                                                                              'pending')
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x1DD79A0F),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: Color(0x1BD7B60F),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  'Pending',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              () {
                                                                                if (datetransactionsItem.transactionType == 'freewill') {
                                                                                  return 'Freewill';
                                                                                } else if (filterItem.transactionType == 'projects') {
                                                                                  return filterItem.partnershipPlan;
                                                                                } else {
                                                                                  return datetransactionsItem.partnershipPlan;
                                                                                }
                                                                              }(),
                                                                              'null',
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            datetransactionsItem.memberFullName,
                                                                                            'Username',
                                                                                          ),
                                                                                          maxLines: 1,
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                              ),
                                                                                          overflow: TextOverflow.ellipsis,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          datetransactionsItem.memberEmail,
                                                                                          'Email Address',
                                                                                        ),
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w300,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFF8F8F8),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Paid at',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: Color(0xFF07944C),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                dateTimeFormat("jm", datetransactionsItem.paidAt!),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 17.0,
                                                                                            child: VerticalDivider(
                                                                                              thickness: 1.0,
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Method',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: Color(0xFF07944C),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  datetransactionsItem.paymentMethod,
                                                                                                  'card',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 17.0,
                                                                                            child: VerticalDivider(
                                                                                              thickness: 1.0,
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Amount',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: Color(0xFF07944C),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  functions.safeCurrency(datetransactionsItem.amount!, FFAppState().currency),
                                                                                                  'N10,000,000',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ].divide(SizedBox(height: 4.0)),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }).divide(SizedBox(
                                                              height: 8.0)),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        );
                                      } else {
                                        return FutureBuilder<
                                            List<TransactionsProjectViewRow>>(
                                          future: TransactionsProjectViewTable()
                                              .queryRows(
                                            queryFn: (q) => q.or(
                                                "transaction_type.eq.${_model.choiceChipsValue}, member_full_name.ilike.${'%${_model.searchfiledTextController.text}%'}"),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 24.0,
                                                  height: 24.0,
                                                  child: SpinKitFadingCube(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<TransactionsProjectViewRow>
                                                containerTransactionsProjectViewRowList =
                                                snapshot.data!;

                                            return Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final filtersort =
                                                      containerTransactionsProjectViewRowList
                                                          .unique((e) =>
                                                              dateTimeFormat(
                                                                  "MMMMEEEEd",
                                                                  e.paidAt!))
                                                          .toList();
                                                  if (filtersort.isEmpty) {
                                                    return Container(
                                                      width: double.infinity,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      child: EmptyWidget(),
                                                    );
                                                  }

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        filtersort.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 8.0),
                                                    itemBuilder: (context,
                                                        filtersortIndex) {
                                                      final filtersortItem =
                                                          filtersort[
                                                              filtersortIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                      "MMMMEEEEd",
                                                                      filtersortItem
                                                                          .paidAt),
                                                                  'Tuesday Decemeber 30',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              final datetransactions = containerTransactionsProjectViewRowList
                                                                  .where((e) =>
                                                                      dateTimeFormat(
                                                                          "MMMMEEEEd",
                                                                          e
                                                                              .paidAt) ==
                                                                      dateTimeFormat(
                                                                          "MMMMEEEEd",
                                                                          filtersortItem
                                                                              .paidAt))
                                                                  .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    datetransactions
                                                                        .length,
                                                                    (datetransactionsIndex) {
                                                                  final datetransactionsItem =
                                                                      datetransactions[
                                                                          datetransactionsIndex];
                                                                  return Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            RecieptWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'id': serializeParam(
                                                                                filtersortItem.transactionId,
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (filtersortItem.transactionStatus == 'success')
                                                                                  Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0x1D0FD770),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: Color(0x1B0FD770),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Text(
                                                                                        'Succesful',
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                              color: Color(0xFF229655),
                                                                                              fontSize: 11.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                if (filtersortItem.transactionStatus == 'failed')
                                                                                  Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0x1DD73D0F),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: Color(0x1BD70F0F),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Text(
                                                                                        'Failed',
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              fontSize: 11.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                if (filtersortItem.transactionStatus == 'pending')
                                                                                  Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0x1DD79A0F),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: Color(0x1BD7B60F),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Text(
                                                                                        'Pending',
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                              fontSize: 11.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  () {
                                                                                    if (filtersortItem.transactionType == 'freewill') {
                                                                                      return 'Freewill';
                                                                                    } else if (filtersortItem.transactionType == 'projects') {
                                                                                      return filtersortItem.projectTitle;
                                                                                    } else {
                                                                                      return filtersortItem.partnershipPlan;
                                                                                    }
                                                                                  }(),
                                                                                  'null',
                                                                                ),
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            filtersortItem.memberFullName,
                                                                                            'Username',
                                                                                          ),
                                                                                          maxLines: 2,
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w300,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          filtersortItem.memberEmail,
                                                                                          'Email Address',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w300,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFF8F8F8),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Paid at',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: Color(0xFF07944C),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                dateTimeFormat("jm", filtersortItem.paidAt!),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 17.0,
                                                                                            child: VerticalDivider(
                                                                                              thickness: 1.0,
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Method',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: Color(0xFF07944C),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  filtersortItem.paymentMethod,
                                                                                                  'card',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 17.0,
                                                                                            child: VerticalDivider(
                                                                                              thickness: 1.0,
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Amount',
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: Color(0xFF07944C),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  functions.safeCurrency(filtersortItem.amount!, filtersortItem.currency!),
                                                                                                  'N10,000,000',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                          ].divide(SizedBox(height: 8.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }).divide(
                                                                    SizedBox(
                                                                        height:
                                                                            8.0)),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
                                  ),
                                ].addToEnd(SizedBox(height: 32.0)),
                              ),
                            ),
                          ),
                        ),
                      if (_model.searchfiledTextController.text != null &&
                          _model.searchfiledTextController.text != '')
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Search result for: ${_model.searchfiledTextController.text}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      if (_model.searchfiledTextController.text != null &&
                          _model.searchfiledTextController.text != '')
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FutureBuilder<
                                      List<TransactionsProjectViewRow>>(
                                    future: TransactionsProjectViewTable()
                                        .queryRows(
                                      queryFn: (q) => q.or(
                                          "transaction_type.eq.${_model.choiceChipsValue}, member_full_name.ilike.${'%${_model.searchfiledTextController.text}%'}, member_email.ilike.${'%${_model.searchfiledTextController.text}%'}"),
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
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<TransactionsProjectViewRow>
                                          containerTransactionsProjectViewRowList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final filtersort =
                                                containerTransactionsProjectViewRowList
                                                    .unique((e) =>
                                                        dateTimeFormat(
                                                            "MMMMEEEEd",
                                                            e.paidAt!))
                                                    .toList();
                                            if (filtersort.isEmpty) {
                                              return Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                child: EmptyWidget(),
                                              );
                                            }

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: filtersort.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, filtersortIndex) {
                                                final filtersortItem =
                                                    filtersort[filtersortIndex];
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                                "MMMMEEEEd",
                                                                filtersortItem
                                                                    .paidAt),
                                                            'Tuesday Decemeber 30',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final datetransactions = containerTransactionsProjectViewRowList
                                                            .where((e) =>
                                                                dateTimeFormat(
                                                                    "MMMMEEEEd",
                                                                    e.paidAt) ==
                                                                dateTimeFormat(
                                                                    "MMMMEEEEd",
                                                                    filtersortItem
                                                                        .paidAt))
                                                            .toList();

                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              datetransactions
                                                                  .length,
                                                              (datetransactionsIndex) {
                                                            final datetransactionsItem =
                                                                datetransactions[
                                                                    datetransactionsIndex];
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                      RecieptWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'id':
                                                                            serializeParam(
                                                                          filtersortItem
                                                                              .transactionId,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          if (filtersortItem.transactionStatus ==
                                                                              'success')
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x1D0FD770),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: Color(0x1B0FD770),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  'Succesful',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        color: Color(0xFF229655),
                                                                                        fontSize: 11.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (filtersortItem.transactionStatus ==
                                                                              'failed')
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x1DD73D0F),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: Color(0x1BD70F0F),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  'Failed',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        fontSize: 11.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (filtersortItem.transactionStatus ==
                                                                              'pending')
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x1DD79A0F),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: Color(0x1BD7B60F),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  'Pending',
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                        fontSize: 11.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              () {
                                                                                if (filtersortItem.transactionType == 'freewill') {
                                                                                  return 'Freewill';
                                                                                } else if (filtersortItem.transactionType == 'projects') {
                                                                                  return filtersortItem.projectTitle;
                                                                                } else {
                                                                                  return filtersortItem.partnershipPlan;
                                                                                }
                                                                              }(),
                                                                              'null',
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      filtersortItem.memberFullName,
                                                                                      'membername',
                                                                                    ),
                                                                                    maxLines: 1,
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                        ),
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    filtersortItem.memberEmail,
                                                                                    'Email Address',
                                                                                  ),
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).info,
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w300,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                      ),
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFFF8F8F8),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Paid at',
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: Color(0xFF07944C),
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          dateTimeFormat("jm", filtersortItem.paidAt!),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 17.0,
                                                                                      child: VerticalDivider(
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Method',
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: Color(0xFF07944C),
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          valueOrDefault<String>(
                                                                                            filtersortItem.paymentMethod,
                                                                                            'card',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 17.0,
                                                                                      child: VerticalDivider(
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Amount',
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: Color(0xFF07944C),
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          valueOrDefault<String>(
                                                                                            functions.safeCurrency(filtersortItem.amount!, filtersortItem.currency!),
                                                                                            'N10,000,000',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            8.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }).divide(SizedBox(
                                                              height: 8.0)),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ].addToEnd(SizedBox(height: 32.0)),
                              ),
                            ),
                          ),
                        ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
