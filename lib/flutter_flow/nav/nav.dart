import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          requireAuth: true,
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Home') : const HomeWidget(),
        ),
        FFRoute(
          name: 'CreateAccount1',
          path: '/createAccount1',
          builder: (context, params) => const CreateAccount1Widget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'CHAT',
          path: '/chat',
          requireAuth: true,
          builder: (context, params) => ChatWidget(
            buttonName: params.getParam(
              'buttonName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Profile16CreateEdit',
          path: '/profile16CreateEdit',
          requireAuth: true,
          builder: (context, params) => const Profile16CreateEditWidget(),
        ),
        FFRoute(
          name: 'adminhome',
          path: '/adminhome',
          requireAuth: true,
          builder: (context, params) => const AdminhomeWidget(),
        ),
        FFRoute(
          name: 'admindashboard',
          path: '/admindashboard',
          requireAuth: true,
          builder: (context, params) => const AdmindashboardWidget(),
        ),
        FFRoute(
          name: 'adminpageprofile',
          path: '/adminpageprofile',
          requireAuth: true,
          builder: (context, params) => const AdminpageprofileWidget(),
        ),
        FFRoute(
          name: 'adminemergecypage',
          path: '/adminemergecypage',
          requireAuth: true,
          builder: (context, params) => AdminemergecypageWidget(
            button1: params.getParam(
              'button1',
              ParamType.String,
            ),
            displayName1: params.getParam(
              'displayName1',
              ParamType.String,
            ),
            ts1: params.getParam(
              'ts1',
              ParamType.String,
            ),
            message1: params.getParam(
              'message1',
              ParamType.String,
            ),
            messageRef1: params.getParam(
              'messageRef1',
              ParamType.String,
            ),
            reply1: params.getParam(
              'reply1',
              ParamType.String,
            ),
            replytime: params.getParam(
              'replytime',
              ParamType.DateTime,
            ),
            replySentorNot: params.getParam(
              'replySentorNot',
              ParamType.bool,
            ),
            documentRef1: params.getParam(
              'documentRef1',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['EmergencyMessage'],
            ),
            emergecyImage1: params.getParam(
              'emergecyImage1',
              ParamType.String,
            ),
            senderemail: params.getParam(
              'senderemail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'replyFromAdminlist',
          path: '/replyFromAdminlist',
          requireAuth: true,
          builder: (context, params) => const ReplyFromAdminlistWidget(),
        ),
        FFRoute(
          name: 'replyfromadimpage',
          path: '/replyfromadimpage',
          requireAuth: true,
          builder: (context, params) => ReplyfromadimpageWidget(
            rButton: params.getParam(
              'rButton',
              ParamType.String,
            ),
            rTS: params.getParam(
              'rTS',
              ParamType.DateTime,
            ),
            rMessage: params.getParam(
              'rMessage',
              ParamType.String,
            ),
            rReplyTime: params.getParam(
              'rReplyTime',
              ParamType.DateTime,
            ),
            rReplyMessage: params.getParam(
              'rReplyMessage',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'adminhomependingforReply',
          path: '/adminhomependingforReply',
          requireAuth: true,
          builder: (context, params) => const AdminhomependingforReplyWidget(),
        ),
        FFRoute(
          name: 'adminMembersArea',
          path: '/adminMembersArea',
          requireAuth: true,
          builder: (context, params) => const AdminMembersAreaWidget(),
        ),
        FFRoute(
          name: 'userProfile',
          path: '/userProfile',
          requireAuth: true,
          builder: (context, params) => const UserProfileWidget(),
        ),
        FFRoute(
          name: 'adminhomepeUnseenMessage',
          path: '/adminhomepeUnseenMessage',
          requireAuth: true,
          builder: (context, params) => const AdminhomepeUnseenMessageWidget(),
        ),
        FFRoute(
          name: 'userForwardedEdit',
          path: '/userForwardedEdit',
          requireAuth: true,
          builder: (context, params) => UserForwardedEditWidget(
            button1: params.getParam(
              'button1',
              ParamType.String,
            ),
            displayName1: params.getParam(
              'displayName1',
              ParamType.String,
            ),
            ts1: params.getParam(
              'ts1',
              ParamType.String,
            ),
            message1: params.getParam(
              'message1',
              ParamType.String,
            ),
            messageRef1: params.getParam(
              'messageRef1',
              ParamType.String,
            ),
            reply1: params.getParam(
              'reply1',
              ParamType.String,
            ),
            replytime: params.getParam(
              'replytime',
              ParamType.DateTime,
            ),
            documentRef1: params.getParam(
              'documentRef1',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['EmergencyMessage'],
            ),
            userImage1: params.getParam(
              'userImage1',
              ParamType.String,
            ),
            messageSeenOrUnseen: params.getParam(
              'messageSeenOrUnseen',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'not_userPage',
          path: '/notUserPage',
          requireAuth: true,
          builder: (context, params) => const NotUserPageWidget(),
        ),
        FFRoute(
          name: 'userMessagees',
          path: '/userMessagees',
          requireAuth: true,
          builder: (context, params) => const UserMessageesWidget(),
        ),
        FFRoute(
          name: 'Surveypage',
          path: '/surveypage',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Surveypage')
              : const SurveypageWidget(),
        ),
        FFRoute(
          name: 'adminAlertMessageReply',
          path: '/adminAlertMessageReply',
          requireAuth: true,
          builder: (context, params) => AdminAlertMessageReplyWidget(
            alertMessage: params.getParam(
              'alertMessage',
              ParamType.String,
            ),
            ts: params.getParam(
              'ts',
              ParamType.DateTime,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userEmail: params.getParam(
              'userEmail',
              ParamType.String,
            ),
            alertMessageref: params.getParam(
              'alertMessageref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Alertmessage'],
            ),
            alertReplymessage: params.getParam(
              'alertReplymessage',
              ParamType.String,
            ),
            alertReplyts: params.getParam(
              'alertReplyts',
              ParamType.DateTime,
            ),
            alertButton: params.getParam(
              'alertButton',
              ParamType.String,
            ),
            alertReplysent: params.getParam(
              'alertReplysent',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'userAlertmessage',
          path: '/userAlertmessage',
          requireAuth: true,
          builder: (context, params) => const UserAlertmessageWidget(),
        ),
        FFRoute(
          name: 'adminInspection',
          path: '/adminInspection',
          requireAuth: true,
          builder: (context, params) => const AdminInspectionWidget(),
        ),
        FFRoute(
          name: 'Inspectionpage',
          path: '/inspectionpage',
          requireAuth: true,
          builder: (context, params) => const InspectionpageWidget(),
        ),
        FFRoute(
          name: 'userSurvey',
          path: '/userSurvey',
          requireAuth: true,
          builder: (context, params) => const UserSurveyWidget(),
        ),
        FFRoute(
          name: 'UserNotification',
          path: '/userNotification',
          requireAuth: true,
          builder: (context, params) => const UserNotificationWidget(),
        ),
        FFRoute(
          name: 'AdminCreateNotification',
          path: '/adminCreateNotification',
          requireAuth: true,
          builder: (context, params) => const AdminCreateNotificationWidget(),
        ),
        FFRoute(
          name: 'AdminNotification',
          path: '/adminNotification',
          requireAuth: true,
          builder: (context, params) => const AdminNotificationWidget(),
        ),
        FFRoute(
          name: 'adminAlertMessage',
          path: '/adminAlertMessage',
          requireAuth: true,
          builder: (context, params) => const AdminAlertMessageWidget(),
        ),
        FFRoute(
          name: 'adminnotificationViewer',
          path: '/adminnotificationViewer',
          requireAuth: true,
          builder: (context, params) => AdminnotificationViewerWidget(
            titleNotification: params.getParam(
              'titleNotification',
              ParamType.String,
            ),
            shortDiscription: params.getParam(
              'shortDiscription',
              ParamType.String,
            ),
            ts: params.getParam(
              'ts',
              ParamType.DateTime,
            ),
            notiFile: params.getParam(
              'notiFile',
              ParamType.String,
            ),
            notiRef: params.getParam(
              'notiRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['AdminNotification'],
            ),
            pdfupload: params.getParam(
              'pdfupload',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'usernotificationViewer',
          path: '/usernotificationViewer',
          requireAuth: true,
          builder: (context, params) => UsernotificationViewerWidget(
            titleNotification: params.getParam(
              'titleNotification',
              ParamType.String,
            ),
            shortDiscription: params.getParam(
              'shortDiscription',
              ParamType.String,
            ),
            ts: params.getParam(
              'ts',
              ParamType.DateTime,
            ),
            notiFile: params.getParam(
              'notiFile',
              ParamType.String,
            ),
            notiRef: params.getParam(
              'notiRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['AdminNotification'],
            ),
            pdfuploadfile: params.getParam(
              'pdfuploadfile',
              ParamType.String,
            ),
            userID: params.getParam(
              'userID',
              ParamType.String,
            ),
            unRead: params.getParam(
              'unRead',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'useralertMessagepage',
          path: '/useralertMessagepage',
          requireAuth: true,
          builder: (context, params) => UseralertMessagepageWidget(
            alertButton: params.getParam(
              'alertButton',
              ParamType.String,
            ),
            alertMessage: params.getParam(
              'alertMessage',
              ParamType.String,
            ),
            alertTS: params.getParam(
              'alertTS',
              ParamType.DateTime,
            ),
            alertReply: params.getParam(
              'alertReply',
              ParamType.String,
            ),
            alertReplyTS: params.getParam(
              'alertReplyTS',
              ParamType.DateTime,
            ),
            alertSeenbyadmin: params.getParam(
              'alertSeenbyadmin',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'CreatePhotogallery',
          path: '/createPhotogallery',
          builder: (context, params) => const CreatePhotogalleryWidget(),
        ),
        FFRoute(
          name: 'Useraboutphotopage',
          path: '/useraboutphotopage',
          requireAuth: true,
          builder: (context, params) => UseraboutphotopageWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            shortdis: params.getParam(
              'shortdis',
              ParamType.String,
            ),
            imagelist: params.getParam(
              'imagelist',
              ParamType.String,
            ),
            photoRef: params.getParam(
              'photoRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Aboutusphotocollection'],
            ),
          ),
        ),
        FFRoute(
          name: 'launchPage',
          path: '/launchPage',
          builder: (context, params) => const LaunchPageWidget(),
        ),
        FFRoute(
          name: 'usercomplaints',
          path: '/usercomplaints',
          requireAuth: true,
          builder: (context, params) => const UsercomplaintsWidget(),
        ),
        FFRoute(
          name: 'Admincomplaints',
          path: '/admincomplaints',
          requireAuth: true,
          builder: (context, params) => const AdmincomplaintsWidget(),
        ),
        FFRoute(
          name: 'aDMINcomplaintsViewer',
          path: '/aDMINcomplaintsViewer',
          requireAuth: true,
          builder: (context, params) => ADMINcomplaintsViewerWidget(
            complaintsREF: params.getParam(
              'complaintsREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['userComplaints'],
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userMail: params.getParam(
              'userMail',
              ParamType.String,
            ),
            description: params.getParam(
              'description',
              ParamType.String,
            ),
            complaints: params.getParam(
              'complaints',
              ParamType.String,
            ),
            imageComplaints: params.getParam<String>(
              'imageComplaints',
              ParamType.String,
              isList: true,
            ),
            stationName: params.getParam(
              'stationName',
              ParamType.String,
            ),
            dateTS: params.getParam(
              'dateTS',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'userCounsellingform',
          path: '/userCounsellingform',
          requireAuth: true,
          builder: (context, params) => UserCounsellingformWidget(
            passtocouncilsheet1: params.getParam(
              'passtocouncilsheet1',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['usercounsellingdetails'],
            ),
          ),
        ),
        FFRoute(
          name: 'adminCouncilPage1',
          path: '/adminCouncilPage1',
          requireAuth: true,
          builder: (context, params) => const AdminCouncilPage1Widget(),
        ),
        FFRoute(
          name: 'admincouncilpage2',
          path: '/admincouncilpage2',
          builder: (context, params) => Admincouncilpage2Widget(
            councildataID: params.getParam(
              'councildataID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['usercounsellingdetails'],
            ),
            cdate: params.getParam(
              'cdate',
              ParamType.DateTime,
            ),
            counsellorname: params.getParam(
              'counsellorname',
              ParamType.String,
            ),
            cstation: params.getParam(
              'cstation',
              ParamType.String,
            ),
            cnoofstaff: params.getParam(
              'cnoofstaff',
              ParamType.String,
            ),
            cimagemain: params.getParam(
              'cimagemain',
              ParamType.String,
            ),
            cdescription: params.getParam(
              'cdescription',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'userAbnormality',
          path: '/userAbnormality',
          builder: (context, params) => const UserAbnormalityWidget(),
        ),
        FFRoute(
          name: 'Adminabnormalitypage2',
          path: '/adminabnormalitypage2',
          builder: (context, params) => Adminabnormalitypage2Widget(
            abnDocumentREF: params.getParam(
              'abnDocumentREF',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['userSMAbnormality'],
            ),
            abnclosestatus: params.getParam(
              'abnclosestatus',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'adminAbnoramlitypage1',
          path: '/adminAbnoramlitypage1',
          requireAuth: true,
          builder: (context, params) => const AdminAbnoramlitypage1Widget(),
        ),
        FFRoute(
          name: 'adminAbnoramlitypagedirect',
          path: '/adminAbnoramlitypagedirect',
          requireAuth: true,
          builder: (context, params) => const AdminAbnoramlitypagedirectWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/launch_page.png',
                        fit: BoxFit.cover,
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
