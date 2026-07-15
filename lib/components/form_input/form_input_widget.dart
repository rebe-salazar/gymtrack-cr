import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_input_model.dart';
export 'form_input_model.dart';

class FormInputWidget extends StatefulWidget {
  const FormInputWidget({
    super.key,
    String? label,
    this.firstName,
  }) : this.label = label ?? 'Nombre';

  final String label;
  final String? firstName;

  @override
  State<FormInputWidget> createState() => _FormInputWidgetState();
}

class _FormInputWidgetState extends State<FormInputWidget> {
  late FormInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormInputModel());
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
            'Nombre',
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
            hint: 'Juan',
            value: widget.firstName,
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
