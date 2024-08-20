import '/components/calender_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dateand_day_widget.dart' show DateandDayWidget;
import 'package:flutter/material.dart';

class DateandDayModel extends FlutterFlowModel<DateandDayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for calender component.
  late CalenderModel calenderModel;

  @override
  void initState(BuildContext context) {
    calenderModel = createModel(context, () => CalenderModel());
  }

  @override
  void dispose() {
    calenderModel.dispose();
  }
}
