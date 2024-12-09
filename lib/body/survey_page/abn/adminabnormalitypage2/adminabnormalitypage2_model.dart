import '/flutter_flow/flutter_flow_util.dart';
import 'adminabnormalitypage2_widget.dart' show Adminabnormalitypage2Widget;
import 'package:flutter/material.dart';

class Adminabnormalitypage2Model
    extends FlutterFlowModel<Adminabnormalitypage2Widget> {
  ///  Local state fields for this page.

  DocumentReference? smABNlocalpagestate;

  String? abnsubreply;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
