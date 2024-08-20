import '/flutter_flow/flutter_flow_util.dart';
import 'enter_o_t_p_widget.dart' show EnterOTPWidget;
import 'package:flutter/material.dart';

class EnterOTPModel extends FlutterFlowModel<EnterOTPWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
