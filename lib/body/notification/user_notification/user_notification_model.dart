import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'user_notification_widget.dart' show UserNotificationWidget;
import 'package:flutter/material.dart';

class UserNotificationModel extends FlutterFlowModel<UserNotificationWidget> {
  ///  Local state fields for this page.

  DateTime? pagetimeupload;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
