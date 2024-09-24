import '/backend/supabase/supabase.dart';
import '/componentes/check_notificacao/check_notificacao_widget.dart';
import '/componentes/empty/empty_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'notificacao_model.dart';
export 'notificacao_model.dart';

class NotificacaoWidget extends StatefulWidget {
  const NotificacaoWidget({
    super.key,
    this.lista,
  });

  final List<VNotificacoesDetalhadasRow>? lista;

  @override
  State<NotificacaoWidget> createState() => _NotificacaoWidgetState();
}

class _NotificacaoWidgetState extends State<NotificacaoWidget>
    with TickerProviderStateMixin {
  late NotificacaoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificacaoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1000),
        callback: (timer) async {
          safeSetState(() => _model.requestCompleter2 = null);
          await _model.waitForRequestCompleted2();
          safeSetState(() => _model.requestCompleter1 = null);
          await _model.waitForRequestCompleted1();
        },
        startImmediately: true,
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(500.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 400.0,
      height: 410.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.notifications_none,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              'Notificações',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    hoverColor: FlutterFlowTheme.of(context).accent1,
                    hoverIconColor: FlutterFlowTheme.of(context).error,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(0.0, 0),
                    child: TabBar(
                      labelColor: FlutterFlowTheme.of(context).alternate,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).accent4,
                      labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                letterSpacing: 0.0,
                              ),
                      unselectedLabelStyle: const TextStyle(),
                      indicatorColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      padding: const EdgeInsets.all(4.0),
                      tabs: const [
                        Tab(
                          text: 'Não visualizado',
                        ),
                        Tab(
                          text: 'Visualizado',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            height: 140.0,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<
                                      List<VNotificacoesDetalhadasRow>>(
                                    future:
                                        (_model.requestCompleter2 ??= Completer<
                                                List<
                                                    VNotificacoesDetalhadasRow>>()
                                              ..complete(
                                                  VNotificacoesDetalhadasTable()
                                                      .queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'visto',
                                                      false,
                                                    )
                                                    .eq(
                                                      'idUsuarioCriouAtividade',
                                                      FFAppState().idUsuario,
                                                    )
                                                    .order('created_at'),
                                                limit: 20,
                                              )))
                                            .future,
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: LinearProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        );
                                      }
                                      List<VNotificacoesDetalhadasRow>
                                          listViewVNotificacoesDetalhadasRowList =
                                          snapshot.data!;

                                      if (listViewVNotificacoesDetalhadasRowList
                                          .isEmpty) {
                                        return const EmptyWidget();
                                      }

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVNotificacoesDetalhadasRowList
                                                .length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(height: 8.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVNotificacoesDetalhadasRow =
                                              listViewVNotificacoesDetalhadasRowList[
                                                  listViewIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              Navigator.pop(context);

                                              context.pushNamed(
                                                'detalheTicket',
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    listViewVNotificacoesDetalhadasRow
                                                        .idTicket,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 8.0, 0.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'A atividade ${listViewVNotificacoesDetalhadasRow.idAtividade?.toString()} foi alterada para ${listViewVNotificacoesDetalhadasRow.statusAtividade} por ${listViewVNotificacoesDetalhadasRow.nomeUsuario}.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    CheckNotificacaoWidget(
                                                      key: Key(
                                                          'Keyqze_${listViewIndex}_of_${listViewVNotificacoesDetalhadasRowList.length}'),
                                                      parameter1:
                                                          listViewVNotificacoesDetalhadasRow
                                                              .visto,
                                                      id: listViewVNotificacoesDetalhadasRow
                                                          .id!,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            height: 140.0,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<
                                      List<VNotificacoesDetalhadasRow>>(
                                    future:
                                        (_model.requestCompleter1 ??= Completer<
                                                List<
                                                    VNotificacoesDetalhadasRow>>()
                                              ..complete(
                                                  VNotificacoesDetalhadasTable()
                                                      .queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'visto',
                                                      true,
                                                    )
                                                    .eq(
                                                      'idUsuarioCriouAtividade',
                                                      FFAppState().idUsuario,
                                                    )
                                                    .order('created_at'),
                                                limit: 20,
                                              )))
                                            .future,
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: LinearProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        );
                                      }
                                      List<VNotificacoesDetalhadasRow>
                                          listViewVNotificacoesDetalhadasRowList =
                                          snapshot.data!;

                                      if (listViewVNotificacoesDetalhadasRowList
                                          .isEmpty) {
                                        return const EmptyWidget();
                                      }

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVNotificacoesDetalhadasRowList
                                                .length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(height: 8.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVNotificacoesDetalhadasRow =
                                              listViewVNotificacoesDetalhadasRowList[
                                                  listViewIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              Navigator.pop(context);

                                              context.pushNamed(
                                                'detalheTicket',
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    listViewVNotificacoesDetalhadasRow
                                                        .idTicket,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 8.0, 0.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'A atividade ${listViewVNotificacoesDetalhadasRow.idAtividade?.toString()} foi alterada para ${listViewVNotificacoesDetalhadasRow.statusAtividade} por ${listViewVNotificacoesDetalhadasRow.nomeUsuario}.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    CheckNotificacaoWidget(
                                                      key: Key(
                                                          'Key1cs_${listViewIndex}_of_${listViewVNotificacoesDetalhadasRowList.length}'),
                                                      parameter1:
                                                          listViewVNotificacoesDetalhadasRow
                                                              .visto,
                                                      id: listViewVNotificacoesDetalhadasRow
                                                          .id!,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
