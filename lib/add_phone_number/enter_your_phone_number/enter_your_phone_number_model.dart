import '/flutter_flow/flutter_flow_util.dart';
import 'enter_your_phone_number_widget.dart' show EnterYourPhoneNumberWidget;
import 'package:flutter/material.dart';

class EnterYourPhoneNumberModel
    extends FlutterFlowModel<EnterYourPhoneNumberWidget> {
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
