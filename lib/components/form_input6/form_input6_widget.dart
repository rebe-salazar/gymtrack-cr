import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_input6_model.dart';
export 'form_input6_model.dart';

class FormInput6Widget extends StatefulWidget {
  const FormInput6Widget({
    super.key,
    String? label,
    this.confirmPassword,
  }) : this.label = label ?? 'Confirmar contraseña';

  final String label;
  final String? confirmPassword;

  @override
  State<FormInput6Widget> createState() => _FormInput6WidgetState();
}

class _FormInput6WidgetState extends State<FormInput6Widget> {
  late FormInput6Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormInput6Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.label,
            'Confirmar contraseña',
          ),
          style: FlutterFlowTheme.of(context).labelLarge.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        wrapWithModel(
          model: _model.textFieldModel,
          updateCallback: () => safeSetState(() {}),
          child: TextFieldWidget(
            label: '',
            labelPresent: false,
            helper: '',
            helperPresent: false,
            leadingIconPresent: false,
            trailingIconPresent: false,
            hint: '••••••••',
            value: widget.confirmPassword,
            onChange: '',
            onSubmit: '',
            variant: 'filled',
            error: false,
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
