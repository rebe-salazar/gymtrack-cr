import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreoRecuperacion widget.
  FocusNode? txtCorreoRecuperacionFocusNode;
  TextEditingController? txtCorreoRecuperacionTextController;
  String? Function(BuildContext, String?)?
      txtCorreoRecuperacionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCorreoRecuperacionFocusNode?.dispose();
    txtCorreoRecuperacionTextController?.dispose();
  }
}
