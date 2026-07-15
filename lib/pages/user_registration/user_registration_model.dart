import '/components/button/button_widget.dart';
import '/components/social_button2/social_button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_registration_widget.dart' show UserRegistrationWidget;
import 'package:flutter/material.dart';

class UserRegistrationModel extends FlutterFlowModel<UserRegistrationWidget> {
  ///  Local state fields for this page.

  String? firstName;

  String? lastName;

  String? email;

  String? phone;

  String? password;

  String? confirmPassword;

  String? error;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre es obligatorio';
    }

    if (val.length < 3) {
      return 'Debe contener al menos 3 caracteres.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtApellidos widget.
  FocusNode? txtApellidosFocusNode;
  TextEditingController? txtApellidosTextController;
  String? Function(BuildContext, String?)? txtApellidosTextControllerValidator;
  String? _txtApellidosTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Los apellidos son obligatorios';
    }

    if (val.length < 3) {
      return 'Debe contener al menos 3 caracteres.';
    }
    if (val.length > 50) {
      return 'Maximum 50 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo electrónico es obligatorio.';
    }

    if (val.length < 6) {
      return 'Ingrese un correo electrónico válido.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Ingrese un correo electrónico válido.';
    }
    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  String? _txtTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El teléfono es obligatorio';
    }

    if (val.length < 8) {
      return 'Debe contener mínimo 8 digitos ';
    }
    if (val.length > 15) {
      return 'Máximo 15 digitos';
    }

    return null;
  }

  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaTextController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaTextControllerValidator;
  String? _txtContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña es obligatoria.';
    }

    if (val.length < 8) {
      return 'La contraseña debe contener al menos 8 caracteres.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtConfirmarContrasena widget.
  FocusNode? txtConfirmarContrasenaFocusNode;
  TextEditingController? txtConfirmarContrasenaTextController;
  late bool txtConfirmarContrasenaVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmarContrasenaTextControllerValidator;
  String? _txtConfirmarContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe confirmar la contraseña.';
    }

    if (val.length < 8) {
      return 'La confirmación debe contener al menos 8 caracteres.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for chkbx widget.
  bool? chkbxValue;
  // Model for btnRegistrar.
  late ButtonModel btnRegistrarModel;
  // Model for btnGoogle.
  late SocialButton2Model btnGoogleModel;
  // Model for btnApple.
  late SocialButton2Model btnAppleModel;

  @override
  void initState(BuildContext context) {
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtApellidosTextControllerValidator = _txtApellidosTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtTelefonoTextControllerValidator = _txtTelefonoTextControllerValidator;
    txtContrasenaVisibility = false;
    txtContrasenaTextControllerValidator =
        _txtContrasenaTextControllerValidator;
    txtConfirmarContrasenaVisibility = false;
    txtConfirmarContrasenaTextControllerValidator =
        _txtConfirmarContrasenaTextControllerValidator;
    btnRegistrarModel = createModel(context, () => ButtonModel());
    btnGoogleModel = createModel(context, () => SocialButton2Model());
    btnAppleModel = createModel(context, () => SocialButton2Model());
  }

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidosFocusNode?.dispose();
    txtApellidosTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaTextController?.dispose();

    txtConfirmarContrasenaFocusNode?.dispose();
    txtConfirmarContrasenaTextController?.dispose();

    btnRegistrarModel.dispose();
    btnGoogleModel.dispose();
    btnAppleModel.dispose();
  }
}
