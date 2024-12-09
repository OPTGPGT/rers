import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'admin_alert_message_model.dart';
export 'admin_alert_message_model.dart';

class AdminAlertMessageWidget extends StatefulWidget {
  const AdminAlertMessageWidget({super.key});

  @override
  State<AdminAlertMessageWidget> createState() =>
      _AdminAlertMessageWidgetState();
}

class _AdminAlertMessageWidgetState extends State<AdminAlertMessageWidget> {
  late AdminAlertMessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminAlertMessageModel());

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
              context.goNamed('admindashboard');
            },
          ),
          title: Text(
            'Alert Messages',
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
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(13.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'RERS',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const TextSpan(
                              text: ' - Forwarded',
                              style: TextStyle(),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 15.0, 5.0, 0.0),
                  child: PagedListView<DocumentSnapshot<Object?>?,
                      AlertmessageRecord>.separated(
                    pagingController: _model.setListViewController(
                      AlertmessageRecord.collection
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
                            context.pushNamed(
                              'adminAlertMessageReply',
                              queryParameters: {
                                'alertMessage': serializeParam(
                                  listViewAlertmessageRecord.alertmessage,
                                  ParamType.String,
                                ),
                                'ts': serializeParam(
                                  listViewAlertmessageRecord.alerttimes,
                                  ParamType.DateTime,
                                ),
                                'userName': serializeParam(
                                  listViewAlertmessageRecord.senderUserName,
                                  ParamType.String,
                                ),
                                'userEmail': serializeParam(
                                  listViewAlertmessageRecord.senderEmail,
                                  ParamType.String,
                                ),
                                'alertMessageref': serializeParam(
                                  listViewAlertmessageRecord.reference,
                                  ParamType.DocumentReference,
                                ),
                                'alertReplymessage': serializeParam(
                                  listViewAlertmessageRecord.alertReply,
                                  ParamType.String,
                                ),
                                'alertReplyts': serializeParam(
                                  listViewAlertmessageRecord.alertreplyTS,
                                  ParamType.DateTime,
                                ),
                                'alertButton': serializeParam(
                                  listViewAlertmessageRecord.alertButtonName,
                                  ParamType.String,
                                ),
                                'alertReplysent': serializeParam(
                                  listViewAlertmessageRecord.alertReplysent,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                            );

                            await listViewAlertmessageRecord.reference
                                .update(createAlertmessageRecordData(
                              messageSeenAdmin: true,
                            ));
                          },
                          child: Container(
                            width: 100.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (listViewAlertmessageRecord
                                        .messageSeenAdmin ==
                                    false) {
                                  return const Color(0xFFF49696);
                                } else if (listViewAlertmessageRecord.alertReply ==
                                        '') {
                                  return const Color(0xFFC9CA77);
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                }
                              }(),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0xFFF2D0D0),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        listViewAlertmessageRecord
                                            .alertButtonName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                            "dd/MM/y H:mm",
                                            listViewAlertmessageRecord
                                                .alerttimes!),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: AutoSizeText(
                                            listViewAlertmessageRecord
                                                .senderUserName
                                                .maybeHandleOverflow(
                                              maxChars: 5000,
                                              replacement: '…',
                                            ),
                                            maxLines: 2,
                                            minFontSize: 14.0,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 5.0)),
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
