import '/components/chart_section_widget.dart';
import '/components/kpi_card3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reports_widget.dart' show ReportsWidget;
import 'package:flutter/material.dart';

class ReportsModel extends FlutterFlowModel<ReportsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for KpiCard.
  late KpiCard3Model kpiCardModel1;
  // Model for KpiCard.
  late KpiCard3Model kpiCardModel2;
  // Model for KpiCard.
  late KpiCard3Model kpiCardModel3;
  // Model for KpiCard.
  late KpiCard3Model kpiCardModel4;
  // Model for ChartSection.
  late ChartSectionModel chartSectionModel1;
  // Model for ChartSection.
  late ChartSectionModel chartSectionModel2;

  @override
  void initState(BuildContext context) {
    kpiCardModel1 = createModel(context, () => KpiCard3Model());
    kpiCardModel2 = createModel(context, () => KpiCard3Model());
    kpiCardModel3 = createModel(context, () => KpiCard3Model());
    kpiCardModel4 = createModel(context, () => KpiCard3Model());
    chartSectionModel1 = createModel(context, () => ChartSectionModel());
    chartSectionModel2 = createModel(context, () => ChartSectionModel());
  }

  @override
  void dispose() {
    kpiCardModel1.dispose();
    kpiCardModel2.dispose();
    kpiCardModel3.dispose();
    kpiCardModel4.dispose();
    chartSectionModel1.dispose();
    chartSectionModel2.dispose();
  }
}
