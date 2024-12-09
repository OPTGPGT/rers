import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'user_alertmessage_model.dart';
export 'user_alertmessage_model.dart';

class UserAlertmessageWidget extends StatefulWidget {
  const UserAlertmessageWidget({super.key});

  @override
  State<UserAlertmessageWidget> createState() => _UserAlertmessageWidgetState();
}

class _UserAlertmessageWidgetState extends State<UserAlertmessageWidget> {
  late UserAlertmessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAlertmessageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.goNamed('Home');
            },
          ),
          title: Text(
            'Alert Message',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: PagedListView<DocumentSnapshot<Object?>?,
                      AlertmessageRecord>.separated(
                    pagingController: _model.setListViewController(
                      AlertmessageRecord.collection
                          .where(
                            'Sender_email',
                            isEqualTo: currentUserEmail,
                          )
                          .orderBy('alerttimes', descending: true),
                    ),
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (_, __) => const SizedBox(height: 6.0),
                    builderDelegate:
                        PagedChildBuilderDelegate<AlertmessageRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),

                      itemBuilder: (context, _, listViewIndex) {
                        final listViewAlertmessageRecord = _model
                            .listViewPagingController!.itemList![listViewIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(
                              'useralertMessagepage',
                              queryParameters: {
                                'alertButton': serializeParam(
                                  listViewAlertmessageRecord.alertButtonName,
                                  ParamType.String,
                                ),
                                'alertMessage': serializeParam(
                                  listViewAlertmessageRecord.alertmessage,
                                  ParamType.String,
                                ),
                                'alertTS': serializeParam(
                                  listViewAlertmessageRecord.alerttimes,
                                  ParamType.DateTime,
                                ),
                                'alertReply': serializeParam(
                                  listViewAlertmessageRecord.alertReply,
                                  ParamType.String,
                                ),
                                'alertReplyTS': serializeParam(
                                  listViewAlertmessageRecord.alertreplyTS,
                                  ParamType.DateTime,
                                ),
                                'alertSeenbyadmin': serializeParam(
                                  listViewAlertmessageRecord.messageSeenAdmin,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                            );

                            await listViewAlertmessageRecord.reference
                                .update(createAlertmessageRecordData(
                              messageSeenUser: true,
                            ));
                          },
                          child: Material(
                            color: Colors.transparent,
                            child: ListTile(
                              title: Text(
                                listViewAlertmessageRecord.alertButtonName,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              subtitle: Text(
                                '${dateTimeFormat("MMMEd", listViewAlertmessageRecord.alerttimes)}  ${dateTimeFormat("Hm", listViewAlertmessageRecord.alerttimes)}',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              tileColor:
                                  listViewAlertmessageRecord.messageSeenUser ==
                                          false
                                      ? const Color(0xFFF2C5C5)
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                              dense: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
