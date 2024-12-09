import '/flutter_flow/flutter_flow_util.dart';
import 'modal02_create_message_image_widget.dart'
    show Modal02CreateMessageImageWidget;
import 'package:flutter/material.dart';

class Modal02CreateMessageImageModel
    extends FlutterFlowModel<Modal02CreateMessageImageWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for alertMessageBox widget.
  FocusNode? alertMessageBoxFocusNode;
  TextEditingController? alertMessageBoxTextController;
  String? Function(BuildContext, String?)?
      alertMessageBoxTextControllerValidator;
  String? _alertMessageBoxTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    alertMessageBoxTextControllerValidator =
        _alertMessageBoxTextControllerValidator;
  }

  @override
  void dispose() {
    alertMessageBoxFocusNode?.dispose();
    alertMessageBoxTextController?.dispose();
  }
}
