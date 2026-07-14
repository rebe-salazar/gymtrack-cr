import '/components/user_role_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'roles_and_permissons_widget.dart' show RolesAndPermissonsWidget;
import 'package:flutter/material.dart';

class RolesAndPermissonsModel
    extends FlutterFlowModel<RolesAndPermissonsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UserRoleCard.
  late UserRoleCardModel userRoleCardModel1;
  // Model for UserRoleCard.
  late UserRoleCardModel userRoleCardModel2;
  // Model for UserRoleCard.
  late UserRoleCardModel userRoleCardModel3;
  // Model for UserRoleCard.
  late UserRoleCardModel userRoleCardModel4;
  // Model for UserRoleCard.
  late UserRoleCardModel userRoleCardModel5;

  @override
  void initState(BuildContext context) {
    userRoleCardModel1 = createModel(context, () => UserRoleCardModel());
    userRoleCardModel2 = createModel(context, () => UserRoleCardModel());
    userRoleCardModel3 = createModel(context, () => UserRoleCardModel());
    userRoleCardModel4 = createModel(context, () => UserRoleCardModel());
    userRoleCardModel5 = createModel(context, () => UserRoleCardModel());
  }

  @override
  void dispose() {
    userRoleCardModel1.dispose();
    userRoleCardModel2.dispose();
    userRoleCardModel3.dispose();
    userRoleCardModel4.dispose();
    userRoleCardModel5.dispose();
  }
}
