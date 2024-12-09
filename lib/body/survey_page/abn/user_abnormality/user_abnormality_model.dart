import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_abnormality_widget.dart' show UserAbnormalityWidget;
import 'package:flutter/material.dart';

class UserAbnormalityModel extends FlutterFlowModel<UserAbnormalityWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for SMName widget.
  FocusNode? sMNameFocusNode;
  TextEditingController? sMNameTextController;
  String? Function(BuildContext, String?)? sMNameTextControllerValidator;
  String? _sMNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for head widget.
  String? headValue;
  FormFieldController<String>? headValueController;
  // State field(s) for Station widget.
  String? stationValue;
  FormFieldController<String>? stationValueController;
  // State field(s) for section widget.
  FocusNode? sectionFocusNode;
  TextEditingController? sectionTextController;
  String? Function(BuildContext, String?)? sectionTextControllerValidator;
  // State field(s) for trainNo widget.
  FocusNode? trainNoFocusNode;
  TextEditingController? trainNoTextController;
  String? Function(BuildContext, String?)? trainNoTextControllerValidator;
  // State field(s) for loco widget.
  FocusNode? locoFocusNode;
  TextEditingController? locoTextController;
  String? Function(BuildContext, String?)? locoTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sMNameTextControllerValidator = _sMNameTextControllerValidator;
  }

  @override
  void dispose() {
    sMNameFocusNode?.dispose();
    sMNameTextController?.dispose();

    sectionFocusNode?.dispose();
    sectionTextController?.dispose();

    trainNoFocusNode?.dispose();
    trainNoTextController?.dispose();

    locoFocusNode?.dispose();
    locoTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
