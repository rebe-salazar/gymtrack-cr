import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'class_item_model.dart';
export 'class_item_model.dart';

class ClassItemWidget extends StatefulWidget {
  const ClassItemWidget({
    super.key,
    String? icon,
    String? title,
    String? time,
    String? spots,
    String? classId,
    String? status,
    this.class_id,
  })  : this.icon = icon ?? '',
        this.title = title ?? '',
        this.time = time ?? '',
        this.spots = spots ?? '',
        this.classId = classId ?? '',
        this.status = status ?? '';

  final String icon;
  final String title;
  final String time;
  final String spots;
  final String classId;
  final String status;
  final String? class_id;

  @override
  State<ClassItemWidget> createState() => _ClassItemWidgetState();
}

class _ClassItemWidgetState extends State<ClassItemWidget> {
  late ClassItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClassItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(),
    );
  }
}
