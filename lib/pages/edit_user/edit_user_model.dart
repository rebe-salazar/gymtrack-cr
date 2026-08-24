import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_user_widget.dart' show EditUserWidget;
import 'package:flutter/material.dart';

class EditUserModel extends FlutterFlowModel<EditUserWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEditarNombre widget.
  FocusNode? txtEditarNombreFocusNode;
  TextEditingController? txtEditarNombreTextController;
  String? Function(BuildContext, String?)?
      txtEditarNombreTextControllerValidator;
  String? _txtEditarNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre es requerido';
    }

    return null;
  }

  // State field(s) for txtEditarApellido widget.
  FocusNode? txtEditarApellidoFocusNode;
  TextEditingController? txtEditarApellidoTextController;
  String? Function(BuildContext, String?)?
      txtEditarApellidoTextControllerValidator;
  String? _txtEditarApellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El apellido es requerido';
    }

    return null;
  }

  // State field(s) for txtEditarCorreo widget.
  FocusNode? txtEditarCorreoFocusNode;
  TextEditingController? txtEditarCorreoTextController;
  String? Function(BuildContext, String?)?
      txtEditarCorreoTextControllerValidator;
  // State field(s) for txtEditarTelefono widget.
  FocusNode? txtEditarTelefonoFocusNode;
  TextEditingController? txtEditarTelefonoTextController;
  String? Function(BuildContext, String?)?
      txtEditarTelefonoTextControllerValidator;
  String? _txtEditarTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El número de teléfono es requerido';
    }

    return null;
  }

  // State field(s) for ddEditarRol widget.
  String? ddEditarRolValue;
  FormFieldController<String>? ddEditarRolValueController;
  // State field(s) for ddEditarEstado widget.
  String? ddEditarEstadoValue;
  FormFieldController<String>? ddEditarEstadoValueController;

  @override
  void initState(BuildContext context) {
    txtEditarNombreTextControllerValidator =
        _txtEditarNombreTextControllerValidator;
    txtEditarApellidoTextControllerValidator =
        _txtEditarApellidoTextControllerValidator;
    txtEditarTelefonoTextControllerValidator =
        _txtEditarTelefonoTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditarNombreFocusNode?.dispose();
    txtEditarNombreTextController?.dispose();

    txtEditarApellidoFocusNode?.dispose();
    txtEditarApellidoTextController?.dispose();

    txtEditarCorreoFocusNode?.dispose();
    txtEditarCorreoTextController?.dispose();

    txtEditarTelefonoFocusNode?.dispose();
    txtEditarTelefonoTextController?.dispose();
  }
}
