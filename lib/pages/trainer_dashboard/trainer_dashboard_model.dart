import '/components/action_tile/action_tile_widget.dart';
import '/components/button/button_widget.dart';
import '/components/metric_card2/metric_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'trainer_dashboard_widget.dart' show TrainerDashboardWidget;
import 'package:flutter/material.dart';

class TrainerDashboardModel extends FlutterFlowModel<TrainerDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for MetricCard84291958.
  late MetricCard2Model metricCard84291958Model1;
  // Model for MetricCard84291958.
  late MetricCard2Model metricCard84291958Model2;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;
  // Model for ActionTile.
  late ActionTileModel actionTileModel1;
  // Model for ActionTile.
  late ActionTileModel actionTileModel2;
  // Model for ActionTile.
  late ActionTileModel actionTileModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    metricCard84291958Model1 = createModel(context, () => MetricCard2Model());
    metricCard84291958Model2 = createModel(context, () => MetricCard2Model());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    actionTileModel1 = createModel(context, () => ActionTileModel());
    actionTileModel2 = createModel(context, () => ActionTileModel());
    actionTileModel3 = createModel(context, () => ActionTileModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    metricCard84291958Model1.dispose();
    metricCard84291958Model2.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    actionTileModel1.dispose();
    actionTileModel2.dispose();
    actionTileModel3.dispose();
  }
}
