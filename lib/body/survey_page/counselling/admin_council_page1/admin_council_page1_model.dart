import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_council_page1_widget.dart' show AdminCouncilPage1Widget;
import 'package:flutter/material.dart';

class AdminCouncilPage1Model extends FlutterFlowModel<AdminCouncilPage1Widget> {
  ///  Local state fields for this page.

  DateTime? updatepagetime;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsercounsellingdetailsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
