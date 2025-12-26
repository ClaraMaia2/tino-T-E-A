import 'package:tino_t_e_a/pages/supervision/supervision_page/supervision_page_widget.dart' show SupervisionPageWidget;

import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class ChangePINDialogModel extends FlutterFlowModel<SupervisionPageWidget> {
  ///  State fields for stateful widgets in this component.

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
