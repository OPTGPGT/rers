import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admincouncilpage2_widget.dart' show Admincouncilpage2Widget;
import 'package:flutter/material.dart';

class Admincouncilpage2Model extends FlutterFlowModel<Admincouncilpage2Widget> {
  ///  Local state fields for this page.

  DocumentReference? councilIDfrommain;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<StaffDetailsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
