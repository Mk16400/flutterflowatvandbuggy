import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pickupanddropoff_model.dart';
export 'pickupanddropoff_model.dart';

class PickupanddropoffWidget extends StatefulWidget {
  const PickupanddropoffWidget({super.key});

  @override
  State<PickupanddropoffWidget> createState() => _PickupanddropoffWidgetState();
}

class _PickupanddropoffWidgetState extends State<PickupanddropoffWidget> {
  late PickupanddropoffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickupanddropoffModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(4.0, 10.0, 0.0, 0.0),
      child: Container(
        width: 393.0,
        height: 314.0,
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
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    width: 103.0,
                    child: Divider(
                      thickness: 4.0,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Select Duration',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 330.0, 0.0),
                    child: Icon(
                      Icons.radio_button_checked,
                      color: FlutterFlowTheme.of(context).selectedButtonColor,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 330.0, 0.0),
                    child: Icon(
                      Icons.radio_button_off,
                      color: FlutterFlowTheme.of(context).selectedButtonColor,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 330.0, 0.0),
                    child: Icon(
                      Icons.radio_button_off,
                      color: FlutterFlowTheme.of(context).selectedButtonColor,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 330.0, 0.0),
                    child: Icon(
                      Icons.radio_button_off,
                      color: FlutterFlowTheme.of(context).selectedButtonColor,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.64, -0.19),
              child: Text(
                '60 minutes',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.63, -0.46),
              child: Text(
                '30 minutes',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.67, 0.33),
              child: Text(
                '180 minutes',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.66, 0.06),
              child: Text(
                '120 minutes',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
