import '/components/button/button_widget.dart';
import '/components/day_selector/day_selector_widget.dart';
import '/components/exercise_card/exercise_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_routine_widget.dart' show MyRoutineWidget;
import 'package:flutter/material.dart';

class MyRoutineModel extends FlutterFlowModel<MyRoutineWidget> {
  ///  Local state fields for this page.

  String? selectedDay = 'Lun';

  bool? trainingStarted = false;

  ///  State fields for stateful widgets in this page.

  // Model for DaySelector.
  late DaySelectorModel daySelectorModel1;
  // Model for DaySelector.
  late DaySelectorModel daySelectorModel2;
  // Model for DaySelector.
  late DaySelectorModel daySelectorModel3;
  // Model for DaySelector.
  late DaySelectorModel daySelectorModel4;
  // Model for DaySelector.
  late DaySelectorModel daySelectorModel5;
  // Model for ExerciseCard.
  late ExerciseCardModel exerciseCardModel1;
  // Model for ExerciseCard.
  late ExerciseCardModel exerciseCardModel2;
  // Model for ExerciseCard.
  late ExerciseCardModel exerciseCardModel3;
  // Model for ExerciseCard.
  late ExerciseCardModel exerciseCardModel4;
  // Model for ExerciseCard.
  late ExerciseCardModel exerciseCardModel5;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    daySelectorModel1 = createModel(context, () => DaySelectorModel());
    daySelectorModel2 = createModel(context, () => DaySelectorModel());
    daySelectorModel3 = createModel(context, () => DaySelectorModel());
    daySelectorModel4 = createModel(context, () => DaySelectorModel());
    daySelectorModel5 = createModel(context, () => DaySelectorModel());
    exerciseCardModel1 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel2 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel3 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel4 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel5 = createModel(context, () => ExerciseCardModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    daySelectorModel1.dispose();
    daySelectorModel2.dispose();
    daySelectorModel3.dispose();
    daySelectorModel4.dispose();
    daySelectorModel5.dispose();
    exerciseCardModel1.dispose();
    exerciseCardModel2.dispose();
    exerciseCardModel3.dispose();
    exerciseCardModel4.dispose();
    exerciseCardModel5.dispose();
    buttonModel.dispose();
  }
}
