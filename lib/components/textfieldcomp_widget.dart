import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'textfieldcomp_model.dart';
export 'textfieldcomp_model.dart';

class TextfieldcompWidget extends StatefulWidget {
  const TextfieldcompWidget({super.key});

  @override
  State<TextfieldcompWidget> createState() => _TextfieldcompWidgetState();
}

class _TextfieldcompWidgetState extends State<TextfieldcompWidget> {
  late TextfieldcompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextfieldcompModel());

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
