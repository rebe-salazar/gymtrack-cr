import '/components/button/button_widget.dart';
import '/components/social_button/social_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  String? email;

  String? password;

  String? error;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCorreoLogin widget.
  FocusNode? txtCorreoLoginFocusNode;
  TextEditingController? txtCorreoLoginTextController;
  String? Function(BuildContext, String?)?
      txtCorreoLoginTextControllerValidator;
  // State field(s) for txtContrasenaLogin widget.
  FocusNode? txtContrasenaLoginFocusNode;
  TextEditingController? txtContrasenaLoginTextController;
  late bool txtContrasenaLoginVisibility;
  String? Function(BuildContext, String?)?
      txtContrasenaLoginTextControllerValidator;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for SocialButton.
  late SocialButtonModel socialButtonModel1;
  // Model for SocialButton.
  late SocialButtonModel socialButtonModel2;

  @override
  void initState(BuildContext context) {
    txtContrasenaLoginVisibility = false;
    buttonModel = createModel(context, () => ButtonModel());
    socialButtonModel1 = createModel(context, () => SocialButtonModel());
    socialButtonModel2 = createModel(context, () => SocialButtonModel());
  }

  @override
  void dispose() {
    txtCorreoLoginFocusNode?.dispose();
    txtCorreoLoginTextController?.dispose();

    txtContrasenaLoginFocusNode?.dispose();
    txtContrasenaLoginTextController?.dispose();

    buttonModel.dispose();
    socialButtonModel1.dispose();
    socialButtonModel2.dispose();
  }
}
