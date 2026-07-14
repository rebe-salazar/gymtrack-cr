import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chart_section_child2_model.dart';
export 'chart_section_child2_model.dart';

class ChartSectionChild2Widget extends StatefulWidget {
  const ChartSectionChild2Widget({super.key});

  @override
  State<ChartSectionChild2Widget> createState() =>
      _ChartSectionChild2WidgetState();
}

class _ChartSectionChild2WidgetState extends State<ChartSectionChild2Widget> {
  late ChartSectionChild2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartSectionChild2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.0,
      height: 0.0,
    );
  }
}
