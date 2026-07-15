import '/components/kpi_card/kpi_card_widget.dart';
import '/components/quick_action/quick_action_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/material.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for KpiCard.
  late KpiCardModel kpiCardModel1;
  // Model for KpiCard.
  late KpiCardModel kpiCardModel2;
  // Model for KpiCard.
  late KpiCardModel kpiCardModel3;
  // Model for KpiCard.
  late KpiCardModel kpiCardModel4;
  // Model for QuickAction.
  late QuickActionModel quickActionModel1;
  // Model for QuickAction.
  late QuickActionModel quickActionModel2;
  // Model for QuickAction.
  late QuickActionModel quickActionModel3;
  // Model for QuickAction.
  late QuickActionModel quickActionModel4;
  // Model for QuickAction.
  late QuickActionModel quickActionModel5;
  // Model for QuickAction.
  late QuickActionModel quickActionModel6;

  @override
  void initState(BuildContext context) {
    kpiCardModel1 = createModel(context, () => KpiCardModel());
    kpiCardModel2 = createModel(context, () => KpiCardModel());
    kpiCardModel3 = createModel(context, () => KpiCardModel());
    kpiCardModel4 = createModel(context, () => KpiCardModel());
    quickActionModel1 = createModel(context, () => QuickActionModel());
    quickActionModel2 = createModel(context, () => QuickActionModel());
    quickActionModel3 = createModel(context, () => QuickActionModel());
    quickActionModel4 = createModel(context, () => QuickActionModel());
    quickActionModel5 = createModel(context, () => QuickActionModel());
    quickActionModel6 = createModel(context, () => QuickActionModel());
  }

  @override
  void dispose() {
    kpiCardModel1.dispose();
    kpiCardModel2.dispose();
    kpiCardModel3.dispose();
    kpiCardModel4.dispose();
    quickActionModel1.dispose();
    quickActionModel2.dispose();
    quickActionModel3.dispose();
    quickActionModel4.dispose();
    quickActionModel5.dispose();
    quickActionModel6.dispose();
  }
}
