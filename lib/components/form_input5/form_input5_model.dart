import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_input5_widget.dart' show FormInput5Widget;
import 'package:flutter/material.dart';

class FormInput5Model extends FlutterFlowModel<FormInput5Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextFieldModel textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
