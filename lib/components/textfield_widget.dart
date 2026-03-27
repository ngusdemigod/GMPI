import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'textfield_model.dart';
export 'textfield_model.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  late TextfieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextfieldModel());

    _model.linkTextController ??= TextEditingController();
    _model.linkFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      child: TextFormField(
        controller: _model.linkTextController,
        focusNode: _model.linkFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.linkTextController',
          Duration(milliseconds: 2000),
          () async {
            FFAppState().rewardlink = _model.linkTextController.text;
            safeSetState(() {});
          },
        ),
        autofocus: false,
        textInputAction: TextInputAction.done,
        obscureText: false,
        decoration: InputDecoration(
          alignLabelWithHint: false,
          hintText: 'Enter video link',
          hintStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                color: FlutterFlowTheme.of(context).info,
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).headlineMediumIsCustom,
              ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
        ),
        style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
              fontSize: 14.0,
              letterSpacing: 0.0,
              useGoogleFonts:
                  !FlutterFlowTheme.of(context).headlineMediumIsCustom,
            ),
        keyboardType: TextInputType.url,
        validator: _model.linkTextControllerValidator.asValidator(context),
      ),
    );
  }
}
