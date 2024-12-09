import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_abnoramlitypage1_widget.dart' show AdminAbnoramlitypage1Widget;
import 'package:flutter/material.dart';

class AdminAbnoramlitypage1Model
    extends FlutterFlowModel<AdminAbnoramlitypage1Widget> {
  ///  Local state fields for this page.

  DateTime? pagetimeupdate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  bool? dropDownValue;
  FormFieldController<bool>? dropDownValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UserSMAbnormalityRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
