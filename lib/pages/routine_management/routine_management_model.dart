import '/components/stat_mini/stat_mini_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'routine_management_widget.dart' show RoutineManagementWidget;
import 'package:flutter/material.dart';

class RoutineManagementModel extends FlutterFlowModel<RoutineManagementWidget> {
  ///  Local state fields for this page.

  String? searchQuery;

  ///  State fields for stateful widgets in this page.

  // Model for StatMini.
  late StatMiniModel statMiniModel1;
  // Model for StatMini.
  late StatMiniModel statMiniModel2;
  // Model for StatMini.
  late StatMiniModel statMiniModel3;
  // Model for TextField.
  late TextFieldModel textFieldModel;

  @override
  void initState(BuildContext context) {
    statMiniModel1 = createModel(context, () => StatMiniModel());
    statMiniModel2 = createModel(context, () => StatMiniModel());
    statMiniModel3 = createModel(context, () => StatMiniModel());
    textFieldModel = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    statMiniModel1.dispose();
    statMiniModel2.dispose();
    statMiniModel3.dispose();
    textFieldModel.dispose();
  }
}
