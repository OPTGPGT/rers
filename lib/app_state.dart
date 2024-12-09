import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/enums/enums.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _selecteddate = DateTime.fromMillisecondsSinceEpoch(1724574060000);
  DateTime? get selecteddate => _selecteddate;
  set selecteddate(DateTime? value) {
    _selecteddate = value;
  }

  bool _isDataUpdated = false;
  bool get isDataUpdated => _isDataUpdated;
  set isDataUpdated(bool value) {
    _isDataUpdated = value;
  }

  Designation? _userRolestate = Designation.User;
  Designation? get userRolestate => _userRolestate;
  set userRolestate(Designation? value) {
    _userRolestate = value;
  }

  final _adminMessageReplyqueryManager = FutureRequestManager<int>();
  Future<int> adminMessageReplyquery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _adminMessageReplyqueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAdminMessageReplyqueryCache() =>
      _adminMessageReplyqueryManager.clear();
  void clearAdminMessageReplyqueryCacheKey(String? uniqueKey) =>
      _adminMessageReplyqueryManager.clearRequest(uniqueKey);

  final _usercomplaintsManager = FutureRequestManager<int>();
  Future<int> usercomplaints({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _usercomplaintsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUsercomplaintsCache() => _usercomplaintsManager.clear();
  void clearUsercomplaintsCacheKey(String? uniqueKey) =>
      _usercomplaintsManager.clearRequest(uniqueKey);

  final _replynotsendcacheManager = FutureRequestManager<int>();
  Future<int> replynotsendcache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _replynotsendcacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearReplynotsendcacheCache() => _replynotsendcacheManager.clear();
  void clearReplynotsendcacheCacheKey(String? uniqueKey) =>
      _replynotsendcacheManager.clearRequest(uniqueKey);

  final _alertmesaageQueryManager = FutureRequestManager<int>();
  Future<int> alertmesaageQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _alertmesaageQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAlertmesaageQueryCache() => _alertmesaageQueryManager.clear();
  void clearAlertmesaageQueryCacheKey(String? uniqueKey) =>
      _alertmesaageQueryManager.clearRequest(uniqueKey);

  final _userabnManager = FutureRequestManager<int>();
  Future<int> userabn({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _userabnManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserabnCache() => _userabnManager.clear();
  void clearUserabnCacheKey(String? uniqueKey) =>
      _userabnManager.clearRequest(uniqueKey);
}
