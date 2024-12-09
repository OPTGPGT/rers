import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_survey_widget.dart' show UserSurveyWidget;
import 'package:flutter/material.dart';

class UserSurveyModel extends FlutterFlowModel<UserSurveyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for trainNumber widget.
  FocusNode? trainNumberFocusNode;
  TextEditingController? trainNumberTextController;
  String? Function(BuildContext, String?)? trainNumberTextControllerValidator;
  String? _trainNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for StationDropdown widget.
  String? stationDropdownValue;
  FormFieldController<String>? stationDropdownValueController;
  // State field(s) for toStation widget.
  FocusNode? toStationFocusNode;
  TextEditingController? toStationTextController;
  String? Function(BuildContext, String?)? toStationTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    trainNumberTextControllerValidator = _trainNumberTextControllerValidator;
  }

  @override
  void dispose() {
    trainNumberFocusNode?.dispose();
    trainNumberTextController?.dispose();

    toStationFocusNode?.dispose();
    toStationTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
