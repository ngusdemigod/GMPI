import '/backend/supabase/supabase.dart';
import '/components/payconfirmation_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'enteramount_model.dart';
export 'enteramount_model.dart';

class EnteramountWidget extends StatefulWidget {
  const EnteramountWidget({
    super.key,
    required this.projID,
    required this.projectname,
    required this.paymenttype,
    this.high,
    this.low,
  });

  final String? projID;
  final String? projectname;
  final String? paymenttype;
  final int? high;
  final int? low;

  static String routeName = 'enteramount';
  static String routePath = '/enteramount';

  @override
  State<EnteramountWidget> createState() => _EnteramountWidgetState();
}

class _EnteramountWidgetState extends State<EnteramountWidget> {
  late EnteramountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnteramountModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.query = await SettingsTable().queryRows(
        queryFn: (q) => q,
      );
      _model.currency = _model.choiceChipsValue;
      _model.rate = valueOrDefault<int>(
        _model.query?.firstOrNull?.dollarRate,
        1500,
      );
      _model.highUSD = (widget!.high!) / (_model.rate!);
      _model.lowUSD = (widget!.low!) / (_model.rate!);
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
                        context.goNamed(
                          AdminhomeWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                            ),
                          },
                        );
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32.0,
                      ),
                    ),
                    Text(
                      'Project details',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: FlutterFlowChoiceChips(
                    options: [ChipData('NGN'), ChipData('USD')],
                    onChanged: (val) async {
                      safeSetState(
                          () => _model.choiceChipsValue = val?.firstOrNull);
                      if (_model.choiceChipsValue == 'NGN') {
                        _model.amount = 0;
                        _model.usdDB = 0.0;
                        _model.ngnDB = 0.0;
                        safeSetState(() {});
                      } else {
                        _model.amount = 0;
                        _model.ngnDB = 0.0;
                        _model.usdDB = 0.0;
                        _model.ngnAmount = 0;
                        safeSetState(() {});
                      }

                      FFAppState().currency = _model.choiceChipsValue!;
                      safeSetState(() {});
                    },
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      iconColor: FlutterFlowTheme.of(context).info,
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      iconColor: Colors.black,
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderColor: Color(0x1B858585),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    chipSpacing: 8.0,
                    rowSpacing: 8.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      ['NGN'],
                    ),
                    wrapped: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.411,
                    decoration: BoxDecoration(
                      color: Color(0xFF090909),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              '1 USD = NGN ${formatNumber(
                                _model.rate,
                                formatType: FormatType.custom,
                                format: '#,###',
                                locale: 'en',
                              )}',
                              '1500',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        if (_model.choiceChipsValue == 'NGN') {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          18.0, 0.0, 0.0, 0.0),
                                      child: SelectionArea(
                                          child: AutoSizeText(
                                        valueOrDefault<String>(
                                          'N${formatNumber(
                                            _model.ngnAmount,
                                            formatType: FormatType.custom,
                                            format: '#,###',
                                            locale: 'en',
                                          )}',
                                          'N0.00',
                                        ),
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        minFontSize: 20.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.robotoMono(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 54.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 18.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.choiceChipsValue == 'NGN') {
                                          _model.amount =
                                              (_model.amount ?? 0) ~/ 10;
                                          _model.ngnAmount = _model.amount;
                                          _model.usdDB =
                                              _model.amount / (_model.rate!);
                                          safeSetState(() {});
                                        } else {
                                          _model.amount =
                                              (_model.amount.toDouble() ?? 0) ~/
                                                  10;
                                          _model.usdAmount =
                                              _model.amount.toDouble();
                                          _model.ngnDB =
                                              (_model.amount * (_model.rate!))
                                                  .toDouble();
                                          safeSetState(() {});
                                        }
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/delete.png',
                                          width: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SelectionArea(
                                    child: AutoSizeText(
                                  valueOrDefault<String>(
                                    '${formatNumber(
                                      _model.usdDB,
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.periodDecimal,
                                      currency: '\$',
                                    )}',
                                    '\$0.00',
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.robotoMono(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                )),
                              ),
                              if (widget!.paymenttype == 'membership')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: SelectionArea(
                                        child: AutoSizeText(
                                      'Amount must  be between N${widget!.low?.toString()} and N${widget!.high?.toString()}',
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.robotoMono(
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                          ),
                                    )),
                                  ),
                                ),
                            ],
                          );
                        } else {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SelectionArea(
                                      child: AutoSizeText(
                                    valueOrDefault<String>(
                                      '\$${_model.usdAmount.toString()}',
                                      'N0.00',
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    minFontSize: 20.0,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.robotoMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 54.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  )),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.choiceChipsValue == 'NGN') {
                                        _model.amount =
                                            (_model.amount ?? 0) ~/ 10;
                                        _model.ngnAmount = _model.amount;
                                        _model.usdDB =
                                            _model.amount / (_model.rate!);
                                        safeSetState(() {});
                                      } else {
                                        _model.amount =
                                            (_model.amount.toDouble() ?? 0) ~/
                                                10;
                                        _model.usdAmount =
                                            _model.amount.toDouble();
                                        _model.ngnDB =
                                            (_model.amount * (_model.rate!))
                                                .toDouble();
                                        safeSetState(() {});
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/delete.png',
                                        width: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SelectionArea(
                                    child: AutoSizeText(
                                  formatNumber(
                                    _model.ngnDB,
                                    formatType: FormatType.custom,
                                    currency: 'N',
                                    format: '#,###',
                                    locale: '',
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.robotoMono(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                )),
                              ),
                              if (widget!.paymenttype == 'membership')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: SelectionArea(
                                        child: AutoSizeText(
                                      'Amount must  be between N${widget!.low?.toString()} and N${widget!.high?.toString()}',
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.robotoMono(
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                          ),
                                    )),
                                  ),
                                ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final numpad = FFAppState().numpad.toList();

                                return Wrap(
                                  spacing: 16.0,
                                  runSpacing: 16.0,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.center,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: List.generate(numpad.length,
                                      (numpadIndex) {
                                    final numpadItem = numpad[numpadIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.choiceChipsValue == 'NGN') {
                                          _model.amount =
                                              ((_model.amount ?? 0) * 10) +
                                                  numpadItem;
                                          _model.ngnAmount = _model.amount;
                                          _model.usdDB =
                                              _model.amount / (_model.rate!);
                                          safeSetState(() {});
                                        } else {
                                          _model.amount =
                                              ((_model.amount ?? 0) * 10 +
                                                  numpadItem);
                                          _model.usdAmount =
                                              _model.amount.toDouble();
                                          _model.ngnDB =
                                              (_model.amount * (_model.rate!))
                                                  .toDouble();
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.221,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              numpadItem.toString(),
                                              '1',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          alignment: AlignmentDirectional(0.0, 1.0),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
                Flexible(
                  child: Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (widget!.paymenttype == 'membership') {
                            if (_model.choiceChipsValue == 'NGN') {
                              if ((int amount, int high, int low) {
                                return ((amount ?? 0) >= low &&
                                    (amount ?? 0) <= high);
                              }(_model.amount, widget!.high!, widget!.low!)) {
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 1000,
                                  ),
                                );
                                await showDialog(
                                  barrierColor: Color(0x96000000),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 1.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            child: PayconfirmationWidget(
                                              amount: _model.amount,
                                              currency:
                                                  _model.choiceChipsValue ==
                                                          'NGN'
                                                      ? 'N'
                                                      : '\$',
                                              projectid: widget!.projID!,
                                              church:
                                                  FFAppState().partnershipUUID,
                                              projectname: widget!.projectname!,
                                              paymenttype: widget!.paymenttype!,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Amount must be betweenN${formatNumber(
                                        widget!.high,
                                        formatType: FormatType.decimal,
                                      )}  and N${formatNumber(
                                        widget!.low,
                                        formatType: FormatType.decimal,
                                      )}',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            } else {
                              if ((int amount, double high, double low) {
                                return ((amount ?? 0) >= low &&
                                    (amount ?? 0) <= high);
                              }(_model.amount, _model.highUSD!,
                                  _model.lowUSD!)) {
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 1000,
                                  ),
                                );
                                await showDialog(
                                  barrierColor: Color(0x96000000),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 1.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            child: PayconfirmationWidget(
                                              amount: _model.amount,
                                              currency:
                                                  _model.choiceChipsValue ==
                                                          'NGN'
                                                      ? 'N'
                                                      : '\$',
                                              projectid: widget!.projID!,
                                              church:
                                                  FFAppState().partnershipUUID,
                                              projectname: widget!.projectname!,
                                              paymenttype: widget!.paymenttype!,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Amount must be betweenN${formatNumber(
                                        widget!.high,
                                        formatType: FormatType.decimal,
                                      )}  and N${formatNumber(
                                        widget!.low,
                                        formatType: FormatType.decimal,
                                      )}',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            }
                          } else {
                            if (_model.choiceChipsValue == 'NGN') {
                              if (((_model.amount ?? 0) > 10)) {
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 1000,
                                  ),
                                );
                                await showDialog(
                                  barrierColor: Color(0x96000000),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 1.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            child: PayconfirmationWidget(
                                              amount: _model.amount,
                                              currency:
                                                  _model.choiceChipsValue ==
                                                          'NGN'
                                                      ? 'N'
                                                      : '\$',
                                              projectid: widget!.projID!,
                                              church:
                                                  FFAppState().partnershipUUID,
                                              projectname: widget!.projectname!,
                                              paymenttype: widget!.paymenttype!,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Amount must be more thanN10',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            } else {
                              if (((_model.amount ?? 0) > 0)) {
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 1000,
                                  ),
                                );
                                await showDialog(
                                  barrierColor: Color(0x96000000),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 1.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            child: PayconfirmationWidget(
                                              amount: _model.amount,
                                              currency:
                                                  _model.choiceChipsValue ==
                                                          'NGN'
                                                      ? 'N'
                                                      : '\$',
                                              projectid: widget!.projID!,
                                              church:
                                                  FFAppState().partnershipUUID,
                                              projectname: widget!.projectname!,
                                              paymenttype: widget!.paymenttype!,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Amount must be between\$0.0',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            }
                          }
                        },
                        text: 'Continue',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 58.81,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
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
  }
}
