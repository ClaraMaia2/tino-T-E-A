import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'colors_contrast_page_widget.dart' show ColorsContrastPageWidget;
import 'package:flutter/material.dart';

class ColorsContrastPageModel
    extends FlutterFlowModel<ColorsContrastPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for SliderContrast widget.
  double? sliderContrastValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
