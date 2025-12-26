import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_p_i_n_page_widget.dart' show ForgotPINPageWidget;
import 'package:flutter/material.dart';

class ForgotPINPageModel extends FlutterFlowModel<ForgotPINPageWidget> {
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
