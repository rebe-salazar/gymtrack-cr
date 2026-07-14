import '/components/button/button_widget.dart';
import '/components/form_input/form_input_widget.dart';
import '/components/form_input2/form_input2_widget.dart';
import '/components/form_input3/form_input3_widget.dart';
import '/components/form_input4/form_input4_widget.dart';
import '/components/form_input5/form_input5_widget.dart';
import '/components/form_input6/form_input6_widget.dart';
import '/components/social_button2/social_button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
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

  // Model for FormInput.
  late FormInputModel formInputModel;
  // Model for FormInput.
  late FormInput2Model formInputModel;
  // Model for FormInput.
  late FormInput3Model formInputModel;
  // Model for FormInput.
  late FormInput4Model formInputModel;
  // Model for FormInput.
  late FormInput5Model formInputModel;
  // Model for FormInput.
  late FormInput6Model formInputModel;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for SocialButton.
  late SocialButton2Model socialButtonModel1;
  // Model for SocialButton.
  late SocialButton2Model socialButtonModel2;

  @override
  void initState(BuildContext context) {
    formInputModel = createModel(context, () => FormInputModel());
    formInputModel = createModel(context, () => FormInput2Model());
    formInputModel = createModel(context, () => FormInput3Model());
    formInputModel = createModel(context, () => FormInput4Model());
    formInputModel = createModel(context, () => FormInput5Model());
    formInputModel = createModel(context, () => FormInput6Model());
    buttonModel = createModel(context, () => ButtonModel());
    socialButtonModel1 = createModel(context, () => SocialButton2Model());
    socialButtonModel2 = createModel(context, () => SocialButton2Model());
  }

  @override
  void dispose() {
    formInputModel.dispose();
    formInputModel.dispose();
    formInputModel.dispose();
    formInputModel.dispose();
    formInputModel.dispose();
    formInputModel.dispose();
    buttonModel.dispose();
    socialButtonModel1.dispose();
    socialButtonModel2.dispose();
  }
}
