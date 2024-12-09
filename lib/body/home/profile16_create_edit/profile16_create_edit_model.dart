import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile16_create_edit_widget.dart' show Profile16CreateEditWidget;
import 'package:flutter/material.dart';

class Profile16CreateEditModel
    extends FlutterFlowModel<Profile16CreateEditWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for designation widget.
  String? designationValue;
  FormFieldController<String>? designationValueController;
  // State field(s) for PFNumber widget.
  FocusNode? pFNumberFocusNode;
  TextEditingController? pFNumberTextController;
  String? Function(BuildContext, String?)? pFNumberTextControllerValidator;
  // State field(s) for HQ widget.
  String? hqValue;
  FormFieldController<String>? hqValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    pFNumberFocusNode?.dispose();
    pFNumberTextController?.dispose();
  }
}
