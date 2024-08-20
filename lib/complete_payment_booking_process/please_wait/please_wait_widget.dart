import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'please_wait_model.dart';
export 'please_wait_model.dart';

class PleaseWaitWidget extends StatefulWidget {
  const PleaseWaitWidget({super.key});

  @override
  State<PleaseWaitWidget> createState() => _PleaseWaitWidgetState();
}

class _PleaseWaitWidgetState extends State<PleaseWaitWidget> {
  late PleaseWaitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PleaseWaitModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308.0,
      height: 128.0,
      decoration: const BoxDecoration(
        color: Color(0xC6242424),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Text(
              'Please Wait',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).info,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 10.0),
            child: Text(
              'Your journey will begin 15 minutes\nbefore your scheduled booking time.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).info,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          const Divider(
            height: 2.0,
            thickness: 1.0,
            color: Color(0x11FFFFFF),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(42.0, 15.0, 45.0, 80.0),
                  child: Text(
                    'Continue',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0x81FFFFFF),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
                child: VerticalDivider(
                  thickness: 1.0,
                  color: Color(0x11FFFFFF),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 15.0, 0.0, 80.0),
                  child: Text(
                    'Okay',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0x81FFFFFF),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
