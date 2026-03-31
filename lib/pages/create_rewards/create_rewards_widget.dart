import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_snackbar.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_rewards_model.dart';
export 'create_rewards_model.dart';

class CreateRewardsWidget extends StatefulWidget {
  const CreateRewardsWidget({super.key});

  @override
  State<CreateRewardsWidget> createState() => _CreateRewardsWidgetState();
}

class _CreateRewardsWidgetState extends State<CreateRewardsWidget>
    with TickerProviderStateMixin {
  late CreateRewardsModel _model;

  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;
  var hasRowTriggered1 = false;
  var hasRowTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateRewardsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.projectNameTextController ??= TextEditingController();
    _model.projectNameFocusNode ??= FocusNode();

    _model.descriptionTextController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();

    _model.linkTextController ??= TextEditingController();
    _model.linkFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 250.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 70.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 470.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 330.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 18.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 470.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 330.0.ms,
            begin: Offset(0.0, 18.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 470.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 330.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 18.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 470.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 330.0.ms,
            begin: Offset(0.0, 18.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5.0,
        sigmaY: 4.0,
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: Color(0x3D000000),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 670.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.0,
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: _model.scrollColumnScrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              controller: _model.columnController,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'Create Reward',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMediumFamily,
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  'Create a new reward for your ministry partners',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        maxWidth: 500.00,
                                        maxHeight: 500.00,
                                        imageQuality: 61,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() => _model
                                                .isDataUploading_uploadDataImage =
                                            true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                    originalFilename:
                                                        m.originalFilename,
                                                  ))
                                              .toList();
                                        } finally {
                                          _model.isDataUploading_uploadDataImage =
                                              false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                            selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile_uploadDataImage =
                                                selectedUploadedFiles.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.memory(
                                        _model.uploadedLocalFile_uploadDataImage
                                                .bytes ??
                                            Uint8List.fromList([]),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Image.asset(
                                          'assets/images/error_image.jpg',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.projectNameTextController,
                                      focusNode: _model.projectNameFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.projectNameTextController',
                                        Duration(milliseconds: 900),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Reward title',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineMediumIsCustom,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 16.0, 0.0, 16.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineMediumIsCustom,
                                          ),
                                      validator: _model
                                          .projectNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(14.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextFormField(
                                                controller: _model
                                                    .descriptionTextController,
                                                focusNode:
                                                    _model.descriptionFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.descriptionTextController',
                                                  Duration(milliseconds: 900),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Add more detials..',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineMediumIsCustom,
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00E0E3E7),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineMediumIsCustom,
                                                        ),
                                                maxLines: 15,
                                                minLines: 15,
                                                validator: _model
                                                    .descriptionTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                              if (FFAppState().rewardtype ==
                                                  'video')
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .linkTextController,
                                                        focusNode: _model
                                                            .linkFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'https://yourvideolink.com',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .headlineMediumIsCustom,
                                                                  ),
                                                          enabledBorder:
                                                              InputBorder.none,
                                                          focusedBorder:
                                                              InputBorder.none,
                                                          errorBorder:
                                                              InputBorder.none,
                                                          focusedErrorBorder:
                                                              InputBorder.none,
                                                          filled: true,
                                                          fillColor:
                                                              Color(0x1DC3C3C3),
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      0.0,
                                                                      16.0),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumIsCustom,
                                                            ),
                                                        validator: _model
                                                            .linkTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              safeSetState(() =>
                                                                  _model.checkboxValue =
                                                                      newValue!);
                                                            },
                                                            side: (FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate !=
                                                                    null)
                                                                ? BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate!,
                                                                  )
                                                                : null,
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                        ),
                                                        Text(
                                                          'is youtube video',
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
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0x1DC3C3C3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x13969696),
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Builder(
                                                          builder: (context) {
                                                            final uploadedfilePDF =
                                                                _model.urls
                                                                    .toList();

                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: List.generate(
                                                                  uploadedfilePDF
                                                                      .length,
                                                                  (uploadedfilePDFIndex) {
                                                                final uploadedfilePDFItem =
                                                                    uploadedfilePDF[
                                                                        uploadedfilePDFIndex];
                                                                return Builder(
                                                                  builder:
                                                                      (context) {
                                                                    if (FFAppState()
                                                                            .rewardtype ==
                                                                        'pdf') {
                                                                      return Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/image-diXhCtmvrDrnGWIrgC6kIFZe6Zg9CL.webp',
                                                                                width: 40.0,
                                                                                height: 40.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    AutoSizeText(
                                                                                      uploadedfilePDFItem.title,
                                                                                      maxLines: 2,
                                                                                      minFontSize: 8.0,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 2.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  _model.apiResultps1Copy = await DeleteFileInBucketCall.call(
                                                                                    jwt: currentJwtToken,
                                                                                    objectKey: uploadedfilePDFItem.objectkey,
                                                                                    churchId: FFAppState().partnershipUUID,
                                                                                  );

                                                                                  if ((_model.apiResultps1Copy?.succeeded ?? true)) {
                                                                                    _model.removeAtIndexFromUrls(uploadedfilePDFIndex);
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('failed to delete'),
                                                                                            content: Text((_model.apiResultps1CopyCopy?.bodyText ?? '')),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                child: Text('Ok'),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  }

                                                                                  safeSetState(() {});
                                                                                },
                                                                                child: Icon(
                                                                                  FFIcons.ktrash01,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!).animateOnActionTrigger(animationsMap['rowOnActionTriggerAnimation1']!,
                                                                                hasBeenTriggered: hasRowTriggered1),
                                                                      );
                                                                    } else {
                                                                      return Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/image-xaFT1FlszEsDcOmAn7aePOhEQFXIN3.webp',
                                                                                width: 40.0,
                                                                                height: 40.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      uploadedfilePDFItem.title,
                                                                                      maxLines: 1,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 2.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  _model.apiResultps1CopyCopy = await DeleteFileInBucketCall.call(
                                                                                    jwt: currentJwtToken,
                                                                                    objectKey: uploadedfilePDFItem.objectkey,
                                                                                    churchId: FFAppState().partnershipUUID,
                                                                                  );

                                                                                  if ((_model.apiResultps1CopyCopy?.succeeded ?? true)) {
                                                                                    _model.removeAtIndexFromUrls(uploadedfilePDFIndex);
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('failed to delete'),
                                                                                            content: Text((_model.apiResultps1CopyCopy?.bodyText ?? '')),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                child: Text('Ok'),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  }

                                                                                  safeSetState(() {});
                                                                                },
                                                                                child: Icon(
                                                                                  FFIcons.ktrash01,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!).animateOnActionTrigger(animationsMap['rowOnActionTriggerAnimation2']!,
                                                                                hasBeenTriggered: hasRowTriggered2),
                                                                      );
                                                                    }
                                                                  },
                                                                );
                                                              }).divide(
                                                                  SizedBox(
                                                                      height:
                                                                          2.0)),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    children: [
                                                      AnimatedOpacity(
                                                        opacity: (_model.progressbar ==
                                                                    350.0) ||
                                                                (_model.progressbar ==
                                                                    0.0)
                                                            ? 0.0
                                                            : 1.0,
                                                        duration: 300.0.ms,
                                                        curve: Curves.easeInOut,
                                                        child:
                                                            AnimatedContainer(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  1010),
                                                          curve: Curves
                                                              .easeInOutQuint,
                                                          width: _model
                                                              .progressbar,
                                                          height: 48.8,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x3E0FD770),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x1DC3C3C3),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if ((FFAppState()
                                                                              .rewardtype ==
                                                                          null ||
                                                                      FFAppState()
                                                                              .rewardtype ==
                                                                          '') ||
                                                                  (FFAppState()
                                                                          .rewardtype ==
                                                                      'pdf'))
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.progressbar =
                                                                        0.0;
                                                                    safeSetState(
                                                                        () {});
                                                                    final selectedFiles =
                                                                        await selectFiles(
                                                                      allowedExtensions: [
                                                                        'pdf'
                                                                      ],
                                                                      multiFile:
                                                                          false,
                                                                    );
                                                                    if (selectedFiles !=
                                                                        null) {
                                                                      safeSetState(() =>
                                                                          _model.isDataUploading_uploadDataPdf =
                                                                              true);
                                                                      var selectedUploadedFiles =
                                                                          <FFUploadedFile>[];

                                                                      try {
                                                                        selectedUploadedFiles = selectedFiles
                                                                            .map((m) => FFUploadedFile(
                                                                                  name: m.storagePath.split('/').last,
                                                                                  bytes: m.bytes,
                                                                                  originalFilename: m.originalFilename,
                                                                                ))
                                                                            .toList();
                                                                      } finally {
                                                                        _model.isDataUploading_uploadDataPdf =
                                                                            false;
                                                                      }
                                                                      if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedFiles
                                                                              .length) {
                                                                        safeSetState(
                                                                            () {
                                                                          _model.uploadedLocalFile_uploadDataPdf =
                                                                              selectedUploadedFiles.first;
                                                                        });
                                                                      } else {
                                                                        safeSetState(
                                                                            () {});
                                                                        return;
                                                                      }
                                                                    }

                                                                    if (!((_model.uploadedLocalFile_uploadDataPdf ==
                                                                                null ||
                                                                            (_model.uploadedLocalFile_uploadDataPdf.bytes?.isEmpty ??
                                                                                true)) ||
                                                                        (_model.urls.where((e) => e.title == _model.uploadedLocalFile_uploadDataPdf.originalFilename).toList().length.toString() ==
                                                                            '1'))) {
                                                                      // Reward type
                                                                      FFAppState()
                                                                              .rewardtype =
                                                                          'pdf';
                                                                      safeSetState(
                                                                          () {});
                                                                      // content type
                                                                      _model.contenttype =
                                                                          'application/pdf';
                                                                      safeSetState(
                                                                          () {});
                                                                      // progress bar
                                                                      _model.progressbar =
                                                                          275.2;
                                                                      safeSetState(
                                                                          () {});
                                                                      // sign upload get url
                                                                      _model.signPDF =
                                                                          await GetUploadURLCall
                                                                              .call(
                                                                        churchId:
                                                                            FFAppState().partnershipUUID,
                                                                        filename: _model
                                                                            .uploadedLocalFile_uploadDataPdf
                                                                            .originalFilename,
                                                                        jwt:
                                                                            currentJwtToken,
                                                                        contenttype:
                                                                            'application/pdf',
                                                                      );

                                                                      // Upload 2 bucket
                                                                      _model.upload2bucket =
                                                                           await UploadToBucketCall
                                                                              .call(
                                                                        url: GetUploadURLCall
                                                                            .uploadurl(
                                                                          (_model.signPDF?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        file: _model
                                                                            .uploadedLocalFile_uploadDataPdf,
                                                                        jwt:
                                                                            currentJwtToken,
                                                                      );

                                                                      // Add file url to offline list
                                                                      _model.addToUrls(
                                                                          LinksStruct(
                                                                        title: _model
                                                                            .uploadedLocalFile_uploadDataPdf
                                                                            .originalFilename,
                                                                        link:
                                                                            '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                                          (_model.signPDF?.jsonBody ??
                                                                              ''),
                                                                        )}',
                                                                        objectkey:
                                                                            GetUploadURLCall.objectkey(
                                                                          (_model.signPDF?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                      ));
                                                                      safeSetState(
                                                                          () {});
                                                                      // progress bar
                                                                      _model.progressbar =
                                                                          350.0;
                                                                      safeSetState(
                                                                          () {});
                                                                      await Future
                                                                          .delayed(
                                                                        Duration(
                                                                          milliseconds:
                                                                              600,
                                                                        ),
                                                                      );
                                                                      await _model
                                                                          .scrollColumnScrollController
                                                                          ?.animateTo(
                                                                        _model
                                                                            .scrollColumnScrollController!
                                                                            .position
                                                                            .maxScrollExtent,
                                                                        duration:
                                                                            Duration(milliseconds: 400),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Attach PDF',
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .kattachment,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        36.5,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconColor:
                                                                        Color(
                                                                            0xFF076534),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x161C1C1C),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              if ((FFAppState()
                                                                              .rewardtype ==
                                                                          null ||
                                                                      FFAppState()
                                                                              .rewardtype ==
                                                                          '') ||
                                                                  (FFAppState()
                                                                          .rewardtype ==
                                                                      'audio'))
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.progressbar =
                                                                        0.0;
                                                                    safeSetState(
                                                                        () {});
                                                                    final selectedFiles =
                                                                        await selectFiles(
                                                                      allowedExtensions: [
                                                                        'mp3'
                                                                      ],
                                                                      multiFile:
                                                                          false,
                                                                    );
                                                                    if (selectedFiles !=
                                                                        null) {
                                                                      safeSetState(() =>
                                                                          _model.isDataUploading_uploadDataAudio =
                                                                              true);
                                                                      var selectedUploadedFiles =
                                                                          <FFUploadedFile>[];

                                                                      try {
                                                                        selectedUploadedFiles = selectedFiles
                                                                            .map((m) => FFUploadedFile(
                                                                                  name: m.storagePath.split('/').last,
                                                                                  bytes: m.bytes,
                                                                                  originalFilename: m.originalFilename,
                                                                                ))
                                                                            .toList();
                                                                      } finally {
                                                                        _model.isDataUploading_uploadDataAudio =
                                                                            false;
                                                                      }
                                                                      if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedFiles
                                                                              .length) {
                                                                        safeSetState(
                                                                            () {
                                                                          _model.uploadedLocalFile_uploadDataAudio =
                                                                              selectedUploadedFiles.first;
                                                                        });
                                                                      } else {
                                                                        safeSetState(
                                                                            () {});
                                                                        return;
                                                                      }
                                                                    }

                                                                    if (!((_model.uploadedLocalFile_uploadDataAudio ==
                                                                                null ||
                                                                            (_model.uploadedLocalFile_uploadDataAudio.bytes?.isEmpty ??
                                                                                true)) ||
                                                                        (_model.urls.where((e) => e.title == _model.uploadedLocalFile_uploadDataAudio.originalFilename).toList().length.toString() ==
                                                                            '1'))) {
                                                                      // Reward type
                                                                      FFAppState()
                                                                              .rewardtype =
                                                                          'audio';
                                                                      safeSetState(
                                                                          () {});
                                                                      // content type
                                                                      _model.contenttype =
                                                                          'audio/mpeg';
                                                                      safeSetState(
                                                                          () {});
                                                                      // progress bar
                                                                      _model.progressbar =
                                                                          275.2;
                                                                      safeSetState(
                                                                          () {});
                                                                      // sign upload get url
                                                                      _model.signAUDIO =
                                                                          await GetUploadURLCall
                                                                              .call(
                                                                        churchId:
                                                                            FFAppState().partnershipUUID,
                                                                        filename: _model
                                                                            .uploadedLocalFile_uploadDataAudio
                                                                            .originalFilename,
                                                                        jwt:
                                                                            currentJwtToken,
                                                                         
                                                                         contenttype: 
                                                                             'audio/mpeg',
                                                                       );

                                                                      // Upload 2 bucket
                                                                      _model.upload2bucket =
                                                                           await UploadToBucketCall
                                                                          .call(
                                                                        url: GetUploadURLCall
                                                                            .uploadurl(
                                                                          (_model.signAUDIO?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        file: _model
                                                                            .uploadedLocalFile_uploadDataAudio,
                                                                        jwt:
                                                                            currentJwtToken,
                                                                      );

                                                                      // Add file url to offline list
                                                                      _model.addToUrls(
                                                                          LinksStruct(
                                                                        title: _model
                                                                            .uploadedLocalFile_uploadDataAudio
                                                                            .originalFilename,
                                                                        link:
                                                                            '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                                          (_model.signAUDIO?.jsonBody ??
                                                                              ''),
                                                                        )}',
                                                                        objectkey:
                                                                            GetUploadURLCall.objectkey(
                                                                          (_model.signAUDIO?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                      ));
                                                                      safeSetState(
                                                                          () {});
                                                                      // progress bar
                                                                      _model.progressbar =
                                                                          350.0;
                                                                      safeSetState(
                                                                          () {});
                                                                      await Future
                                                                          .delayed(
                                                                        Duration(
                                                                          milliseconds:
                                                                              600,
                                                                        ),
                                                                      );
                                                                      await _model
                                                                          .scrollColumnScrollController
                                                                          ?.animateTo(
                                                                        _model
                                                                            .scrollColumnScrollController!
                                                                            .position
                                                                            .maxScrollExtent,
                                                                        duration:
                                                                            Duration(milliseconds: 400),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Upload Audio',
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .kvideoMinus,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        36.5,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconColor:
                                                                        Color(
                                                                            0xFF076534),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x161C1C1C),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              if ((FFAppState()
                                                                              .rewardtype ==
                                                                          null ||
                                                                      FFAppState()
                                                                              .rewardtype ==
                                                                          '') ||
                                                                  (FFAppState()
                                                                          .rewardtype ==
                                                                      'video'))
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    FFAppState()
                                                                            .rewardtype =
                                                                        'video';
                                                                    safeSetState(
                                                                        () {});
                                                                    await _model
                                                                        .scrollColumnScrollController
                                                                        ?.animateTo(
                                                                      _model
                                                                          .scrollColumnScrollController!
                                                                          .position
                                                                          .maxScrollExtent,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              400),
                                                                      curve: Curves
                                                                          .ease,
                                                                    );
                                                                  },
                                                                  text: 'Video',
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .klink,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        36.5,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconColor:
                                                                        Color(
                                                                            0xFF076534),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x161C1C1C),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                          .rewardtype !=
                                                                      null &&
                                                                  FFAppState()
                                                                          .rewardtype !=
                                                                      '')
                                                                InkWell(
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
                                                                    // Add files to Q and clear
                                                                    _model.queue = _model
                                                                        .urls
                                                                        .toList()
                                                                        .cast<
                                                                            LinksStruct>();
                                                                    _model.urls =
                                                                        [];
                                                                    safeSetState(
                                                                        () {});
                                                                    FFAppState()
                                                                        .rewardtype = '';
                                                                    safeSetState(
                                                                        () {});
                                                                    for (int loop1Index =
                                                                            0;
                                                                        loop1Index <=
                                                                            _model.queue.length -
                                                                                1;
                                                                        loop1Index++) {
                                                                      final currentLoop1Item =
                                                                          _model
                                                                              .queue[loop1Index];
                                                                      _model.apiResultqsk =
                                                                          await DeleteFileInBucketCall
                                                                              .call(
                                                                        jwt:
                                                                            currentJwtToken,
                                                                        objectKey:
                                                                            currentLoop1Item.objectkey,
                                                                        churchId:
                                                                            FFAppState().partnershipUUID,
                                                                      );

                                                                      if (!(_model
                                                                              .apiResultqsk
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return WebViewAware(
                                                                              child: AlertDialog(
                                                                                title: Text('failed'),
                                                                                content: Text('Delete failed'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      }
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .close_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                            ].divide(SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ]
                                                    .divide(
                                                        SizedBox(height: 4.0))
                                                    .addToStart(
                                                        SizedBox(height: 4.0)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (!(isWeb
                                      ? MediaQuery.viewInsetsOf(context)
                                              .bottom >
                                          0
                                      : _isKeyboardVisible))
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        if ((_model.projectNameTextController
                                                            .text ==
                                                        null ||
                                                    _model.projectNameTextController
                                                            .text ==
                                                        '') &&
                                                (_model.descriptionTextController
                                                            .text ==
                                                        null ||
                                                    _model.descriptionTextController
                                                            .text ==
                                                        '') &&
                                                (_model.uploadedLocalFile_uploadDataImage ==
                                                        null ||
                                                    (_model.uploadedLocalFile_uploadDataImage
                                                            .bytes?.isEmpty ??
                                                        true))
                                            ? false
                                            : true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 4.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                if (FFAppState().rewardtype ==
                                                    'video') {
                                                  _model.addToVideourls(
                                                      VideolinksStruct(
                                                    links: _model
                                                        .linkTextController
                                                        .text,
                                                    isyoutube:
                                                        _model.checkboxValue,
                                                    title: 'video reward',
                                                  ));
                                                  safeSetState(() {});
                                                }
                                                // get Featured img signed url
                                                _model.featuredurlDRAFT =
                                                    await GetUploadURLCall.call(
                                                  jwt: currentJwtToken,
                                                  churchId: FFAppState()
                                                      .partnershipUUID,
                                                  filename: _model
                                                      .uploadedLocalFile_uploadDataImage
                                                      .originalFilename,
                                                  contenttype: functions
                                                      .getContentType(_model
                                                          .uploadedLocalFile_uploadDataImage
                                                          .originalFilename),
                                                );

                                                // upload featured to storage
                                                _model.uploadFeatured2bucketDRAFT =
                                                    await UploadToBucketCall
                                                        .call(
                                                  url: GetUploadURLCall
                                                      .uploadurl(
                                                    (_model.featuredurlDRAFT
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  file: _model
                                                      .uploadedLocalFile_uploadDataImage,
                                                  jwt: currentJwtToken,
                                                );

                                                if ((FFAppState().rewardtype ==
                                                        'pdf') ||
                                                    (FFAppState().rewardtype ==
                                                        'audio')) {
                                                  // MP3, PDF payload
                                                  FFAppState().tempPayload =
                                                      MediapayloadStruct(
                                                    payloadType: FFAppState()
                                                                .rewardtype ==
                                                            'audio'
                                                        ? 'media'
                                                        : 'pdf',
                                                    mediaType:
                                                        FFAppState().rewardtype,
                                                    title: _model
                                                        .projectNameTextController
                                                        .text,
                                                    links: _model.urls,
                                                    thumbnailUrl:
                                                        '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                      (_model.featuredurlDRAFT
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}',
                                                    yTlinks: _model.videourls,
                                                  );
                                                  safeSetState(() {});
                                                } else if (FFAppState()
                                                        .rewardtype ==
                                                    'video') {
                                                  // VIDEO LINK payload
                                                  FFAppState().tempPayload =
                                                      MediapayloadStruct(
                                                    payloadType: 'media',
                                                    mediaType:
                                                        FFAppState().rewardtype,
                                                    title: _model
                                                        .projectNameTextController
                                                        .text,
                                                    thumbnailUrl:
                                                        '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                      (_model.featuredurlDRAFT
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}',
                                                    yTlinks: _model.videourls,
                                                    links: _model.urls,
                                                  );
                                                  safeSetState(() {});
                                                }

                                                _model.uploadrowDRAFT =
                                                    await RewardsTable()
                                                        .insert({
                                                  'title': _model
                                                      .projectNameTextController
                                                      .text,
                                                  'description': _model
                                                      .descriptionTextController
                                                      .text,
                                                  'reward_type': FFAppState()
                                                                  .rewardtype ==
                                                              null ||
                                                          FFAppState()
                                                                  .rewardtype ==
                                                              ''
                                                      ? 'content'
                                                      : FFAppState().rewardtype,
                                                  'featured_image_url':
                                                      '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                    (_model.featuredurlDRAFT
                                                            ?.jsonBody ??
                                                        ''),
                                                  )}',
                                                  'is_active': false,
                                                  'has_media': FFAppState()
                                                                  .rewardtype ==
                                                              null ||
                                                          FFAppState()
                                                                  .rewardtype ==
                                                              ''
                                                      ? false
                                                      : true,
                                                  'church_id': FFAppState()
                                                      .partnershipUUID,
                                                  'creator_name':
                                                      currentUserUid,
                                                  'attachment_path': _model
                                                          .urls.isNotEmpty
                                                      ? _model.urls.first.link
                                                      : null,
                                                  'payload': functions
                                                      .mediaPayload2JSON(
                                                          FFAppState()
                                                              .tempPayload),
                                                });
                                                FFSnackbar.show(context, 'Uploaded');
                                                Navigator.pop(context);

                                                safeSetState(() {});
                                              },
                                              text: 'Save draft',
                                              options: FFButtonOptions(
                                                width: 129.91,
                                                height: 37.7,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 32.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 4.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: ((_model
                                                                  .projectNameTextController
                                                                  .text ==
                                                              null ||
                                                          _model.projectNameTextController
                                                                  .text ==
                                                              '') &&
                                                      (_model.descriptionTextController
                                                                  .text ==
                                                              null ||
                                                          _model.descriptionTextController
                                                                  .text ==
                                                              '') &&
                                                      (_model.uploadedLocalFile_uploadDataImage ==
                                                              null ||
                                                          (_model
                                                                  .uploadedLocalFile_uploadDataImage
                                                                  .bytes
                                                                  ?.isEmpty ??
                                                              true)))
                                                  ? null
                                                  : () async {
                                                      if (FFAppState()
                                                              .rewardtype ==
                                                          'video') {
                                                        _model.addToVideourls(
                                                            VideolinksStruct(
                                                          links: _model
                                                              .linkTextController
                                                              .text,
                                                          isyoutube: _model
                                                              .checkboxValue,
                                                          title: 'video reward',
                                                        ));
                                                        safeSetState(() {});
                                                      }
                                                      // get Featured img signed url
                                                      _model.featuredurl =
                                                          await GetUploadURLCall
                                                              .call(
                                                        jwt: currentJwtToken,
                                                        churchId: FFAppState()
                                                            .partnershipUUID,
                                                        filename: _model
                                                            .uploadedLocalFile_uploadDataImage
                                                            .originalFilename,
                                                        contenttype: functions
                                                            .getContentType(_model
                                                                .uploadedLocalFile_uploadDataImage
                                                                .originalFilename),
                                                      );

                                                      // upload featured to storage
                                                      _model.uploadFeatured2bucket =
                                                          await UploadToBucketCall
                                                              .call(
                                                        url: GetUploadURLCall
                                                            .uploadurl(
                                                          (_model.featuredurl
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        file: _model
                                                            .uploadedLocalFile_uploadDataImage,
                                                        jwt: currentJwtToken,
                                                      );

                                                      if ((FFAppState()
                                                                  .rewardtype ==
                                                              'pdf') ||
                                                          (FFAppState()
                                                                  .rewardtype ==
                                                              'audio')) {
                                                        // MP3, PDF payload
                                                        FFAppState()
                                                                .tempPayload =
                                                            MediapayloadStruct(
                                                          payloadType: FFAppState()
                                                                      .rewardtype ==
                                                                  'audio'
                                                              ? 'media'
                                                              : 'pdf',
                                                          mediaType:
                                                              FFAppState()
                                                                  .rewardtype,
                                                          title: _model
                                                              .projectNameTextController
                                                              .text,
                                                          links: _model.urls,
                                                          thumbnailUrl:
                                                              '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                            (_model.featuredurl
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )}',
                                                          yTlinks:
                                                              _model.videourls,
                                                        );
                                                        safeSetState(() {});
                                                      } else if (FFAppState()
                                                              .rewardtype ==
                                                          'video') {
                                                        // VIDEO LINK payload
                                                        FFAppState()
                                                                .tempPayload =
                                                            MediapayloadStruct(
                                                          payloadType: 'media',
                                                          mediaType:
                                                              FFAppState()
                                                                  .rewardtype,
                                                          title: _model
                                                              .projectNameTextController
                                                              .text,
                                                          thumbnailUrl:
                                                              '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                            (_model.featuredurl
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )}',
                                                          yTlinks:
                                                              _model.videourls,
                                                          links: _model.urls,
                                                        );
                                                        safeSetState(() {});
                                                      }

                                                      _model.uploadrow =
                                                          await RewardsTable()
                                                              .insert({
                                                        'title': _model
                                                            .projectNameTextController
                                                            .text,
                                                        'description': _model
                                                            .descriptionTextController
                                                            .text,
                                                        'reward_type': FFAppState()
                                                                        .rewardtype ==
                                                                    null ||
                                                                FFAppState()
                                                                        .rewardtype ==
                                                                    ''
                                                            ? 'content'
                                                            : FFAppState()
                                                                .rewardtype,
                                                        'featured_image_url':
                                                            '${FFAppState().storagePuburl}${GetUploadURLCall.objectkey(
                                                          (_model.featuredurl
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )}',
                                                        'is_active': true,
                                                        'has_media': FFAppState()
                                                                        .rewardtype ==
                                                                    null ||
                                                                FFAppState()
                                                                        .rewardtype ==
                                                                    ''
                                                            ? false
                                                            : true,
                                                        'church_id': FFAppState()
                                                            .partnershipUUID,
                                                        'creator_name':
                                                            currentUserUid,
                                                        'attachment_path': _model
                                                                .urls.isNotEmpty
                                                            ? _model.urls.first
                                                                .link
                                                            : null,
                                                        'payload': functions
                                                            .mediaPayload2JSON(
                                                                FFAppState()
                                                                    .tempPayload),
                                                      });
                                                      FFSnackbar.show(context, 'Uploaded');
                                                      Navigator.pop(context);

                                                      safeSetState(() {});
                                                    },
                                              text: 'Publish',
                                              options: FFButtonOptions(
                                                width: 141.02,
                                                height: 37.7,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 32.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                disabledColor:
                                                    Color(0xFF878787),
                                                disabledTextColor:
                                                    Color(0xFFDBDBDB),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ].addToStart(SizedBox(height: 23.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
    );
  }
}




