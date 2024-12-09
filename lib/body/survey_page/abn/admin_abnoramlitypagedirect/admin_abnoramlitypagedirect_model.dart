import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_abnoramlitypagedirect_widget.dart'
    show AdminAbnoramlitypagedirectWidget;
import 'package:flutter/material.dart';

class AdminAbnoramlitypagedirectModel
    extends FlutterFlowModel<AdminAbnoramlitypagedirectWidget> {
  ///  Local state fields for this page.

  DateTime? updatetimepage;

  ///  State fields for stateful widgets in this page.

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
