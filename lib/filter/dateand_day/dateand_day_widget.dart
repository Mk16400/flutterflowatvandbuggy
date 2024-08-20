import '/components/calender_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dateand_day_model.dart';
export 'dateand_day_model.dart';

class DateandDayWidget extends StatefulWidget {
  const DateandDayWidget({super.key});

  @override
  State<DateandDayWidget> createState() => _DateandDayWidgetState();
}

class _DateandDayWidgetState extends State<DateandDayWidget> {
  late DateandDayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateandDayModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 10.0, 0.0, 0.0),
            child: Container(
              width: 400.0,
              height: 716.0,
              decoration: const BoxDecoration(
                color: Color(0xFF232323),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Stack(
                children: [
                  wrapWithModel(
                    model: _model.calenderModel,
                    updateCallback: () => setState(() {}),
                    child: const CalenderWidget(),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.04, -0.41),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Week.png',
                        width: 326.0,
                        height: 24.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.01, 0.19),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Days.png',
                        width: 326.0,
                        height: 284.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.11, -0.58),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/month_&_Year.png',
                        width: 334.0,
                        height: 27.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
