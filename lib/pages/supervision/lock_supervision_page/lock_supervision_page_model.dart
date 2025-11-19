import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'lock_supervision_page_widget.dart' show LockSupervisionPageWidget;
import 'package:flutter/material.dart';

class LockSupervisionPageModel
    extends FlutterFlowModel<LockSupervisionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in LockSupervisionPage widget.
  UsersRecord? userRef;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - validateBirthYearPin] action in Button widget.
  bool? dateValidate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
