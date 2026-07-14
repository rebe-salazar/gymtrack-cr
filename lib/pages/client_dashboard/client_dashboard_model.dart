import '/components/button/button_widget.dart';
import '/components/kpi_card2/kpi_card2_widget.dart';
import '/components/quick_action2/quick_action2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'client_dashboard_widget.dart' show ClientDashboardWidget;
import 'package:flutter/material.dart';

class ClientDashboardModel extends FlutterFlowModel<ClientDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;
  // Model for KpiCard.
  late KpiCard2Model kpiCardModel1;
  // Model for KpiCard.
  late KpiCard2Model kpiCardModel2;
  // Model for QuickAction.
  late QuickAction2Model quickActionModel1;
  // Model for QuickAction.
  late QuickAction2Model quickActionModel2;
  // Model for QuickAction.
  late QuickAction2Model quickActionModel3;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
    kpiCardModel1 = createModel(context, () => KpiCard2Model());
    kpiCardModel2 = createModel(context, () => KpiCard2Model());
    quickActionModel1 = createModel(context, () => QuickAction2Model());
    quickActionModel2 = createModel(context, () => QuickAction2Model());
    quickActionModel3 = createModel(context, () => QuickAction2Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    kpiCardModel1.dispose();
    kpiCardModel2.dispose();
    quickActionModel1.dispose();
    quickActionModel2.dispose();
    quickActionModel3.dispose();
  }
}
