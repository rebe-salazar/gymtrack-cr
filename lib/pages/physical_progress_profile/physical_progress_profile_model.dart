import '/components/button/button_widget.dart';
import '/components/metric_card/metric_card_widget.dart';
import '/components/profile_item/profile_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'physical_progress_profile_widget.dart'
    show PhysicalProgressProfileWidget;
import 'package:flutter/material.dart';

class PhysicalProgressProfileModel
    extends FlutterFlowModel<PhysicalProgressProfileWidget> {
  ///  Local state fields for this page.

  double? weight = 72.5;

  double? imc = 24.2;

  String? phone = '+506 8888-0000';

  String? error;

  ///  State fields for stateful widgets in this page.

  // Model for MetricCard.
  late MetricCardModel metricCardModel1;
  // Model for MetricCard.
  late MetricCardModel metricCardModel2;
  // Model for ProfileItem.
  late ProfileItemModel profileItemModel1;
  // Model for ProfileItem.
  late ProfileItemModel profileItemModel2;
  // Model for ProfileItem.
  late ProfileItemModel profileItemModel3;
  // Model for ProfileItem.
  late ProfileItemModel profileItemModel4;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    metricCardModel1 = createModel(context, () => MetricCardModel());
    metricCardModel2 = createModel(context, () => MetricCardModel());
    profileItemModel1 = createModel(context, () => ProfileItemModel());
    profileItemModel2 = createModel(context, () => ProfileItemModel());
    profileItemModel3 = createModel(context, () => ProfileItemModel());
    profileItemModel4 = createModel(context, () => ProfileItemModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    metricCardModel1.dispose();
    metricCardModel2.dispose();
    profileItemModel1.dispose();
    profileItemModel2.dispose();
    profileItemModel3.dispose();
    profileItemModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
