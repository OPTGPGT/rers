import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'usercouncilstaffdetails_widget.dart' show UsercouncilstaffdetailsWidget;
import 'package:flutter/material.dart';

class UsercouncilstaffdetailsModel
    extends FlutterFlowModel<UsercouncilstaffdetailsWidget> {
  ///  Local state fields for this component.

  DocumentReference? userstaffdetail;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for StaffName widget.
  FocusNode? staffNameFocusNode;
  TextEditingController? staffNameTextController;
  String? Function(BuildContext, String?)? staffNameTextControllerValidator;
  String? _staffNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Staffpf widget.
  FocusNode? staffpfFocusNode;
  TextEditingController? staffpfTextController;
  String? Function(BuildContext, String?)? staffpfTextControllerValidator;
  String? _staffpfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for empPF widget.
  FocusNode? empPFFocusNode;
  TextEditingController? empPFTextController;
  String? Function(BuildContext, String?)? empPFTextControllerValidator;
  String? _empPFTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    staffNameTextControllerValidator = _staffNameTextControllerValidator;
    staffpfTextControllerValidator = _staffpfTextControllerValidator;
    empPFTextControllerValidator = _empPFTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    staffNameFocusNode?.dispose();
    staffNameTextController?.dispose();

    staffpfFocusNode?.dispose();
    staffpfTextController?.dispose();

    empPFFocusNode?.dispose();
    empPFTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
