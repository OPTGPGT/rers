import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editprofile_auth2_widget.dart' show EditprofileAuth2Widget;
import 'package:flutter/material.dart';

class EditprofileAuth2Model extends FlutterFlowModel<EditprofileAuth2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for yourdesgination widget.
  FocusNode? yourdesginationFocusNode;
  TextEditingController? yourdesginationTextController;
  String? Function(BuildContext, String?)?
      yourdesginationTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourdesginationFocusNode?.dispose();
    yourdesginationTextController?.dispose();
  }
}
