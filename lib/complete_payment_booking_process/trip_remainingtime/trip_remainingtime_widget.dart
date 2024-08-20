import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'trip_remainingtime_model.dart';
export 'trip_remainingtime_model.dart';

class TripRemainingtimeWidget extends StatefulWidget {
  const TripRemainingtimeWidget({super.key});

  @override
  State<TripRemainingtimeWidget> createState() =>
      _TripRemainingtimeWidgetState();
}

class _TripRemainingtimeWidgetState extends State<TripRemainingtimeWidget> {
  late TripRemainingtimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TripRemainingtimeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 320.0,
          height: 290.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/map.png',
                  width: 320.0,
                  height: 290.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.86),
                child: Container(
                  width: 290.0,
                  height: 125.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).searchFillColor,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      '5:32:34',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color:
                                FlutterFlowTheme.of(context).unselectedButton,
                            fontSize: 40.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
