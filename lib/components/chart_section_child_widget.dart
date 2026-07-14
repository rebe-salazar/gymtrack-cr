import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chart_section_child_model.dart';
export 'chart_section_child_model.dart';

class ChartSectionChildWidget extends StatefulWidget {
  const ChartSectionChildWidget({super.key});

  @override
  State<ChartSectionChildWidget> createState() =>
      _ChartSectionChildWidgetState();
}

class _ChartSectionChildWidgetState extends State<ChartSectionChildWidget> {
  late ChartSectionChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartSectionChildModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: FlutterFlowBarChart(
        barData: [
          FFBarChartData(
            yData: ([0.8, 1.1, 0.9, 1.2, 1.0, 1.2]),
            color: FlutterFlowTheme.of(context).primary,
          )
        ],
        xLabels: (['Ago', 'Sep', 'Oct', 'Nov', 'Dic', 'Ene']),
        barWidth: 20.0,
        barBorderRadius: BorderRadius.circular(4.0),
        groupSpace: 12.0,
        alignment: BarChartAlignment.spaceEvenly,
        chartStylingInfo: ChartStylingInfo(
          backgroundColor: Colors.transparent,
          showBorder: false,
        ),
        axisBounds: AxisBounds(
          minY: 0.0,
          maxX: 5.0,
          maxY: 1.44,
        ),
        xAxisLabelInfo: AxisLabelInfo(
          showLabels: true,
          labelTextStyle: FlutterFlowTheme.of(context).bodySmall.override(
                font: GoogleFonts.inter(
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 10.0,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                lineHeight: 1.0,
              ),
          reservedSize: 20.0,
        ),
        yAxisLabelInfo: AxisLabelInfo(
          reservedSize: 0.0,
        ),
      ),
    );
  }
}
