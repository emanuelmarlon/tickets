import '/backend/supabase/supabase.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/informacoes_problema_na_entrega/informacoes_problema_na_entrega_widget.dart';
import '/componentes/informacoes_separacao/informacoes_separacao_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pedidos_copy_model.dart';
export 'pedidos_copy_model.dart';

class PedidosCopyWidget extends StatefulWidget {
  const PedidosCopyWidget({
    super.key,
    this.cpf,
  });

  final String? cpf;

  @override
  State<PedidosCopyWidget> createState() => _PedidosCopyWidgetState();
}

class _PedidosCopyWidgetState extends State<PedidosCopyWidget>
    with TickerProviderStateMixin {
  late PedidosCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PedidosCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().transportadora != false) {
        context.pushNamed('home');
      }
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 5000),
        callback: (timer) async {
          safeSetState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        },
        startImmediately: true,
      );
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'listViewOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'listViewOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'listViewOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'listViewOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'listViewOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 170.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<PedidosExataRow>>(
      future: (_model.requestCompleter ??= Completer<List<PedidosExataRow>>()
            ..complete(PedidosExataTable().queryRows(
              queryFn: (q) => q
                  .neq(
                    'status',
                    'Entregue',
                  )
                  .order('numeroMercos'),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<PedidosExataRow> pedidosCopyPedidosExataRowList = snapshot.data!;

        return Title(
            title: 'pedidosCopy',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                endDrawer: SizedBox(
                  width: 330.0,
                  child: Drawer(
                    elevation: 16.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 330.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Registrar atendimento',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Data',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 150.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                  "dd/MM/yyyy",
                                                  getCurrentTimestamp,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                'data',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 116.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                  "Hm",
                                                  getCurrentTimestamp,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                'hora',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Meio de contato',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Container(
                                      width: 290.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                        options: const [
                                          'Ligação',
                                          'E-mail',
                                          'WhatsApp'
                                        ],
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue1 = val),
                                        width: 300.0,
                                        height: 56.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Meio de contato',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Resultado',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 290.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController2 ??=
                                              FormFieldController<String>(null),
                                          options: const [
                                            'Ligação',
                                            'E-mail',
                                            'WhatsApp'
                                          ],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.dropDownValue2 = val),
                                          width: 300.0,
                                          height: 56.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Resultado do atendimento',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Container(
                                        width: 290.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Detalhes do atendimento',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: 5,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Container(
                                width: 330.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Salvar',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Cancelar',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                body: SafeArea(
                  top: true,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                          ))
                            wrapWithModel(
                              model: _model.menuHomeModel,
                              updateCallback: () => safeSetState(() {}),
                              child: const MenuHomeWidget(
                                nomePagina: 'pedidos',
                              ),
                            ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      wrapWithModel(
                                        model: _model.cabecalhoModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const CabecalhoWidget(),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 70.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18.0,
                                                                18.0,
                                                                18.0,
                                                                18.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .safePop();
                                                                  FFAppState()
                                                                          .drawerTamanho =
                                                                      270.0;
                                                                  FFAppState()
                                                                      .update(
                                                                          () {});
                                                                  FFAppState()
                                                                          .menu =
                                                                      false;
                                                                  FFAppState()
                                                                      .update(
                                                                          () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .reply_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  'Pedidos',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            24.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            6.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'pedidosGeral');
                                                                  },
                                                                  text: 'Todos',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        44.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    hoverColor:
                                                                        const Color(
                                                                            0x83582DB4),
                                                                    hoverBorderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    hoverTextColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    hoverElevation:
                                                                        0.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 6.0)),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          8.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.textController1,
                                                                          focusNode:
                                                                              _model.textFieldFocusNode1,
                                                                          onChanged: (_) =>
                                                                              EasyDebounce.debounce(
                                                                            '_model.textController1',
                                                                            const Duration(milliseconds: 1),
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                          ),
                                                                          autofocus:
                                                                              true,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Digite o número do pedido, razão social, fantasia, CNPJ ou nome do vendedor...',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            suffixIcon:
                                                                                Icon(
                                                                              Icons.search_rounded,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          cursorColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          validator: _model
                                                                              .textController1Validator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                8.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              height: 900.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(16.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).warning,
                                                                                        borderRadius: const BorderRadius.only(
                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                          bottomRight: Radius.circular(0.0),
                                                                                          topLeft: Radius.circular(10.0),
                                                                                          topRight: Radius.circular(10.0),
                                                                                        ),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                            child: Text(
                                                                                              'Aberto - ${valueOrDefault<String>(
                                                                                                pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aberto').toList().length.toString(),
                                                                                                '0',
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                    Container(
                                                                                      height: 820.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Builder(
                                                                                        builder: (context) {
                                                                                          final pedidos = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aberto').toList();

                                                                                          return ListView.builder(
                                                                                            padding: const EdgeInsets.fromLTRB(
                                                                                              0,
                                                                                              0,
                                                                                              0,
                                                                                              20.0,
                                                                                            ),
                                                                                            shrinkWrap: true,
                                                                                            scrollDirection: Axis.vertical,
                                                                                            itemCount: pedidos.length,
                                                                                            itemBuilder: (context, pedidosIndex) {
                                                                                              final pedidosItem = pedidos[pedidosIndex];
                                                                                              return Visibility(
                                                                                                visible: functions.pesquisaCopy(_model.textController1.text, pedidosItem.numeroMercos, pedidosItem.razaoSocial, pedidosItem.fantasia, pedidosItem.cnpj, pedidosItem.vendedor) ?? true,
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                width: 100.0,
                                                                                                                height: 70.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                    bottomRight: Radius.circular(0.0),
                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                    topRight: Radius.circular(12.0),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                      children: [
                                                                                                                        AlignedTooltip(
                                                                                                                          content: Padding(
                                                                                                                            padding: const EdgeInsets.all(12.0),
                                                                                                                            child: Text(
                                                                                                                              'Atrasado ${valueOrDefault<String>(
                                                                                                                                functions.tempoSemComprar(pedidosItem.createdAt),
                                                                                                                                '0',
                                                                                                                              )} dia(s)',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          offset: 4.0,
                                                                                                                          preferredDirection: AxisDirection.up,
                                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                                          backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          elevation: 4.0,
                                                                                                                          tailBaseWidth: 24.0,
                                                                                                                          tailLength: 12.0,
                                                                                                                          waitDuration: const Duration(milliseconds: 100),
                                                                                                                          showDuration: const Duration(milliseconds: 1),
                                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                                          child: Visibility(
                                                                                                                            visible: functions.verificaNumeroCopy(functions.tempoSemComprar(pedidosItem.createdAt)) == false,
                                                                                                                            child: Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atrasado',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Container(
                                                                                                                          width: 10.0,
                                                                                                                          height: 12.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                        ),
                                                                                                                        AlignedTooltip(
                                                                                                                          content: Padding(
                                                                                                                            padding: const EdgeInsets.all(4.0),
                                                                                                                            child: Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                pedidosItem.bloquadoObs,
                                                                                                                                'Não informado',
                                                                                                                              ),
                                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          offset: 4.0,
                                                                                                                          preferredDirection: AxisDirection.up,
                                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                                          backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          elevation: 4.0,
                                                                                                                          tailBaseWidth: 24.0,
                                                                                                                          tailLength: 12.0,
                                                                                                                          waitDuration: const Duration(milliseconds: 100),
                                                                                                                          showDuration: const Duration(milliseconds: 1),
                                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                                          child: Visibility(
                                                                                                                            visible: pedidosItem.bloqueado == true,
                                                                                                                            child: Container(
                                                                                                                              decoration: const BoxDecoration(
                                                                                                                                color: Color(0xFFDD3535),
                                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(12.0),
                                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                                  topLeft: Radius.circular(0.0),
                                                                                                                                  topRight: Radius.circular(12.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Bloqueado',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Expanded(
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Expanded(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                                                child: Column(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        pedidosItem.numeroMercos,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                                            fontSize: 18.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          pedidosItem.vendedor,
                                                                                                                                          'Não informado',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 12.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  FFAppState().HTMLMessage = 'Digite seu texto aqui...';
                                                                                                                  safeSetState(() {});
                                                                                                                  FFAppState().HTMLMessage = valueOrDefault<String>(
                                                                                                                    pedidosItem.observacoes,
                                                                                                                    'Digite seu texto aqui...',
                                                                                                                  );
                                                                                                                  FFAppState().update(() {});

                                                                                                                  context.pushNamed(
                                                                                                                    'detalhePedidoExata',
                                                                                                                    queryParameters: {
                                                                                                                      'id': serializeParam(
                                                                                                                        pedidosItem.id,
                                                                                                                        ParamType.int,
                                                                                                                      ),
                                                                                                                      'data': serializeParam(
                                                                                                                        pedidosItem.previsaoEntrega,
                                                                                                                        ParamType.DateTime,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                  );

                                                                                                                  FFAppState().drawerTamanho = 270.0;
                                                                                                                  FFAppState().update(() {});
                                                                                                                  FFAppState().menu = false;
                                                                                                                  FFAppState().update(() {});
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(12.0),
                                                                                                                      bottomRight: Radius.circular(12.0),
                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  width: 10.0,
                                                                                                                                  height: 12.0,
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                ),
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(
                                                                                                                                    color: Color(0xD63A2DA5),
                                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                                                      bottomRight: Radius.circular(0.0),
                                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  child: Padding(
                                                                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        pedidosItem.condicaoPagamento,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            fontSize: 12.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Padding(
                                                                                                                              padding: const EdgeInsets.all(16.0),
                                                                                                                              child: SingleChildScrollView(
                                                                                                                                child: Column(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                      children: [
                                                                                                                                        Expanded(
                                                                                                                                          child: Row(
                                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                                            children: [
                                                                                                                                              Padding(
                                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                                child: Icon(
                                                                                                                                                  Icons.calendar_month,
                                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                                  size: 18.0,
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                              Expanded(
                                                                                                                                                child: Text(
                                                                                                                                                  '${valueOrDefault<String>(
                                                                                                                                                    dateTimeFormat(
                                                                                                                                                      "dd/MM/yyyy",
                                                                                                                                                      functions.formatDate(valueOrDefault<String>(
                                                                                                                                                        pedidosItem.createdAt.toString(),
                                                                                                                                                        'Não informado',
                                                                                                                                                      )),
                                                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                    ),
                                                                                                                                                    'Não informado',
                                                                                                                                                  )} - ${valueOrDefault<String>(
                                                                                                                                                    dateTimeFormat(
                                                                                                                                                      "Hm",
                                                                                                                                                      pedidosItem.createdAt,
                                                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                    ),
                                                                                                                                                    'Não informado',
                                                                                                                                                  )}',
                                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                                      ),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ],
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.person_2,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 18.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Expanded(
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              pedidosItem.razaoSocial,
                                                                                                                                              'Não informado',
                                                                                                                                            ).maybeHandleOverflow(
                                                                                                                                              maxChars: 20,
                                                                                                                                              replacement: '…',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.numbers_sharp,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 18.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Expanded(
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              pedidosItem.cnpj,
                                                                                                                                              'Não informado',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.attach_money,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 18.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Expanded(
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              formatNumber(
                                                                                                                                                pedidosItem.valor,
                                                                                                                                                formatType: FormatType.custom,
                                                                                                                                                format: '###,##0.00',
                                                                                                                                                locale: 'pt_BR',
                                                                                                                                              ),
                                                                                                                                              '0,00',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.title,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 18.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Expanded(
                                                                                                                                          child: Text(
                                                                                                                                            '${valueOrDefault<String>(
                                                                                                                                              pedidosItem.cidade,
                                                                                                                                              'Não informado',
                                                                                                                                            )}- ${valueOrDefault<String>(
                                                                                                                                              pedidosItem.estado,
                                                                                                                                              'Não informado',
                                                                                                                                            )}',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Expanded(
                                                                                                                                          child: Padding(
                                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                            child: Text(
                                                                                                                                              valueOrDefault<String>(
                                                                                                                                                pedidosItem.fantasia,
                                                                                                                                                'Não informado',
                                                                                                                                              ).maybeHandleOverflow(
                                                                                                                                                maxChars: 30,
                                                                                                                                                replacement: '…',
                                                                                                                                              ),
                                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                                  ),
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                  ].divide(const SizedBox(height: 6.0)),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(
                                                                                                    animationsMap['containerOnPageLoadAnimation1']!,
                                                                                                    effects: [
                                                                                                      MoveEffect(
                                                                                                        curve: Curves.easeInOut,
                                                                                                        delay: valueOrDefault<double>(
                                                                                                          pedidosIndex * 100,
                                                                                                          0.0,
                                                                                                        ).ms,
                                                                                                        duration: 600.0.ms,
                                                                                                        begin: const Offset(-400.0, 0.0),
                                                                                                        end: const Offset(0.0, 0.0),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation1']!);
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 6.0)),
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
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            8.0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              900.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xD69489F5),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                4.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: const BoxDecoration(
                                                                                    color: Color(0xD69489F5),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(10.0),
                                                                                      topRight: Radius.circular(10.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                        child: Text(
                                                                                          'Expedição - ${valueOrDefault<String>(
                                                                                            pedidosCopyPedidosExataRowList.where((e) => e.status == 'Expedição').toList().length.toString(),
                                                                                            '0',
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                Container(
                                                                                  height: 820.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final pedidos2 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Expedição').toList();

                                                                                      return ListView.builder(
                                                                                        padding: const EdgeInsets.fromLTRB(
                                                                                          0,
                                                                                          0,
                                                                                          0,
                                                                                          20.0,
                                                                                        ),
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: pedidos2.length,
                                                                                        itemBuilder: (context, pedidos2Index) {
                                                                                          final pedidos2Item = pedidos2[pedidos2Index];
                                                                                          return Visibility(
                                                                                            visible: functions.pesquisaCopy(_model.textController1.text, pedidos2Item.numeroMercos, pedidos2Item.razaoSocial, pedidos2Item.fantasia, pedidos2Item.cnpj, pedidos2Item.vendedor) ?? true,
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                                                                              child: Container(
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Container(
                                                                                                            width: 100.0,
                                                                                                            height: 70.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                bottomRight: Radius.circular(0.0),
                                                                                                                topLeft: Radius.circular(12.0),
                                                                                                                topRight: Radius.circular(12.0),
                                                                                                              ),
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    AlignedTooltip(
                                                                                                                      content: Padding(
                                                                                                                        padding: const EdgeInsets.all(12.0),
                                                                                                                        child: Text(
                                                                                                                          'Atrasado${valueOrDefault<String>(
                                                                                                                            functions.tempoSemComprar(pedidos2Item.createdAt),
                                                                                                                            '0',
                                                                                                                          )} dia(s)',
                                                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      offset: 4.0,
                                                                                                                      preferredDirection: AxisDirection.up,
                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                      backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                      elevation: 4.0,
                                                                                                                      tailBaseWidth: 24.0,
                                                                                                                      tailLength: 12.0,
                                                                                                                      waitDuration: const Duration(milliseconds: 100),
                                                                                                                      showDuration: const Duration(milliseconds: 1),
                                                                                                                      triggerMode: TooltipTriggerMode.tap,
                                                                                                                      child: Visibility(
                                                                                                                        visible: functions.verificaNumeroCopy(functions.tempoSemComprar(pedidos2Item.createdAt)) == false,
                                                                                                                        child: Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                                            borderRadius: const BorderRadius.only(
                                                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                                                              bottomRight: Radius.circular(12.0),
                                                                                                                              topLeft: Radius.circular(12.0),
                                                                                                                              topRight: Radius.circular(0.0),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                            child: Text(
                                                                                                                              'Atrasado',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    fontSize: 12.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    if (functions.verificaNumeroCopy(functions.tempoSemComprar(pedidos2Item.createdAt)) == true)
                                                                                                                      Container(
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                          borderRadius: const BorderRadius.only(
                                                                                                                            bottomLeft: Radius.circular(0.0),
                                                                                                                            bottomRight: Radius.circular(12.0),
                                                                                                                            topLeft: Radius.circular(12.0),
                                                                                                                            topRight: Radius.circular(0.0),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                'Atenção',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      fontSize: 12.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    Container(
                                                                                                                      width: 10.0,
                                                                                                                      height: 12.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Expanded(
                                                                                                                  child: Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Expanded(
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      pedidos2Item.numeroMercos,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                                          fontSize: 18.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      pedidos2Item.vendedor,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                          fontSize: 12.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: InkWell(
                                                                                                            splashColor: Colors.transparent,
                                                                                                            focusColor: Colors.transparent,
                                                                                                            hoverColor: Colors.transparent,
                                                                                                            highlightColor: Colors.transparent,
                                                                                                            onTap: () async {
                                                                                                              FFAppState().HTMLMessage = 'Digite seu texto aqui...';
                                                                                                              safeSetState(() {});
                                                                                                              FFAppState().HTMLMessage = valueOrDefault<String>(
                                                                                                                pedidos2Item.observacoes,
                                                                                                                'Digite seu texto aqui...',
                                                                                                              );
                                                                                                              FFAppState().update(() {});

                                                                                                              context.pushNamed(
                                                                                                                'detalhePedidoExata',
                                                                                                                queryParameters: {
                                                                                                                  'id': serializeParam(
                                                                                                                    pedidos2Item.id,
                                                                                                                    ParamType.int,
                                                                                                                  ),
                                                                                                                  'data': serializeParam(
                                                                                                                    pedidos2Item.previsaoEntrega,
                                                                                                                    ParamType.DateTime,
                                                                                                                  ),
                                                                                                                }.withoutNulls,
                                                                                                              );

                                                                                                              FFAppState().drawerTamanho = 270.0;
                                                                                                              FFAppState().update(() {});
                                                                                                              FFAppState().menu = false;
                                                                                                              FFAppState().update(() {});
                                                                                                            },
                                                                                                            child: Container(
                                                                                                              width: 100.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                  bottomLeft: Radius.circular(12.0),
                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                  topLeft: Radius.circular(0.0),
                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Column(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Container(
                                                                                                                              width: 10.0,
                                                                                                                              height: 12.0,
                                                                                                                              decoration: const BoxDecoration(),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              decoration: const BoxDecoration(
                                                                                                                                color: Color(0xD63A2DA5),
                                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                                  topLeft: Radius.circular(0.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsets.all(4.0),
                                                                                                                                child: Text(
                                                                                                                                  valueOrDefault<String>(
                                                                                                                                    pedidos2Item.condicaoPagamento,
                                                                                                                                    'Não informado',
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        Padding(
                                                                                                                          padding: const EdgeInsets.all(16.0),
                                                                                                                          child: SingleChildScrollView(
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                  children: [
                                                                                                                                    Expanded(
                                                                                                                                      child: Row(
                                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                                        children: [
                                                                                                                                          Padding(
                                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                            child: Icon(
                                                                                                                                              Icons.calendar_month,
                                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                              size: 18.0,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          Expanded(
                                                                                                                                            child: Text(
                                                                                                                                              '${valueOrDefault<String>(
                                                                                                                                                dateTimeFormat(
                                                                                                                                                  "dd/MM/yyyy",
                                                                                                                                                  functions.formatDate(valueOrDefault<String>(
                                                                                                                                                    pedidos2Item.createdAt.toString(),
                                                                                                                                                    '0',
                                                                                                                                                  )),
                                                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                ),
                                                                                                                                                'Não informado',
                                                                                                                                              )} - ${valueOrDefault<String>(
                                                                                                                                                dateTimeFormat(
                                                                                                                                                  "Hm",
                                                                                                                                                  pedidos2Item.createdAt,
                                                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                ),
                                                                                                                                                '0',
                                                                                                                                              )}',
                                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                                  ),
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ],
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.person_2,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          pedidos2Item.razaoSocial,
                                                                                                                                          'Não informado',
                                                                                                                                        ).maybeHandleOverflow(
                                                                                                                                          maxChars: 20,
                                                                                                                                          replacement: '…',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.numbers_sharp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          pedidos2Item.cnpj,
                                                                                                                                          'Não informado',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.attach_money,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        formatNumber(
                                                                                                                                          pedidos2Item.valor,
                                                                                                                                          formatType: FormatType.custom,
                                                                                                                                          format: '###,##0.00',
                                                                                                                                          locale: 'pt_BR',
                                                                                                                                        ),
                                                                                                                                        '0,00',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.title_sharp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        '${valueOrDefault<String>(
                                                                                                                                          pedidos2Item.cidade,
                                                                                                                                          'Não informado',
                                                                                                                                        )} - ${valueOrDefault<String>(
                                                                                                                                          pedidos2Item.estado,
                                                                                                                                          'Não informado',
                                                                                                                                        )}',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    if ((valueOrDefault<String>(
                                                                                                                                                  pedidos2Item.fantasia,
                                                                                                                                                  'Não informado',
                                                                                                                                                ) !=
                                                                                                                                                '') &&
                                                                                                                                        (pedidos2Item.fantasia != 'null') &&
                                                                                                                                        (pedidos2Item.fantasia != 'Não informado'))
                                                                                                                                      Expanded(
                                                                                                                                        child: Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              pedidos2Item.fantasia,
                                                                                                                                              'Não informado',
                                                                                                                                            ).maybeHandleOverflow(
                                                                                                                                              maxChars: 30,
                                                                                                                                              replacement: '…',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ).animateOnPageLoad(
                                                                                                animationsMap['containerOnPageLoadAnimation2']!,
                                                                                                effects: [
                                                                                                  MoveEffect(
                                                                                                    curve: Curves.easeInOut,
                                                                                                    delay: valueOrDefault<double>(
                                                                                                      pedidos2Index * 100,
                                                                                                      0.0,
                                                                                                    ).ms,
                                                                                                    duration: 600.0.ms,
                                                                                                    begin: const Offset(-400.0, 0.0),
                                                                                                    end: const Offset(0.0, 0.0),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation2']!);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            8.0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              900.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                4.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(10.0),
                                                                                      topRight: Radius.circular(10.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                        child: Text(
                                                                                          'Faturamento - ${valueOrDefault<String>(
                                                                                            pedidosCopyPedidosExataRowList.where((e) => e.status == 'Faturamento').toList().length.toString(),
                                                                                            '0',
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                Container(
                                                                                  height: 820.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final tickets3 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Faturamento').toList();

                                                                                      return ListView.builder(
                                                                                        padding: const EdgeInsets.fromLTRB(
                                                                                          0,
                                                                                          0,
                                                                                          0,
                                                                                          20.0,
                                                                                        ),
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: tickets3.length,
                                                                                        itemBuilder: (context, tickets3Index) {
                                                                                          final tickets3Item = tickets3[tickets3Index];
                                                                                          return Stack(
                                                                                            children: [
                                                                                              if (functions.pesquisaCopy(_model.textController1.text, tickets3Item.numeroMercos, tickets3Item.razaoSocial, tickets3Item.fantasia, tickets3Item.cnpj, tickets3Item.vendedor) ?? true)
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                width: 100.0,
                                                                                                                height: 70.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                    bottomRight: Radius.circular(0.0),
                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                    topRight: Radius.circular(12.0),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        AlignedTooltip(
                                                                                                                          content: Padding(
                                                                                                                            padding: const EdgeInsets.all(12.0),
                                                                                                                            child: Text(
                                                                                                                              'Atrasado ${functions.tempoSemComprar(tickets3Item.createdAt)} dia(s)',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          offset: 4.0,
                                                                                                                          preferredDirection: AxisDirection.up,
                                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                                          backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          elevation: 4.0,
                                                                                                                          tailBaseWidth: 24.0,
                                                                                                                          tailLength: 12.0,
                                                                                                                          waitDuration: const Duration(milliseconds: 100),
                                                                                                                          showDuration: const Duration(milliseconds: 1),
                                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                                          child: Visibility(
                                                                                                                            visible: functions.verificaNumeroCopy(functions.tempoSemComprar(tickets3Item.createdAt)) == false,
                                                                                                                            child: Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atrasado',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        if (functions.verificaNumeroCopy(functions.tempoSemComprar(tickets3Item.createdAt)) == true)
                                                                                                                          Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                                bottomRight: Radius.circular(12.0),
                                                                                                                                topLeft: Radius.circular(12.0),
                                                                                                                                topRight: Radius.circular(0.0),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                'Atenção',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      fontSize: 12.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        Container(
                                                                                                                          width: 10.0,
                                                                                                                          height: 12.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Expanded(
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Expanded(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                                                child: Column(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.numeroMercos,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                                            fontSize: 18.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.vendedor,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                            fontSize: 12.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  FFAppState().HTMLMessage = 'Digite seu texto aqui...';
                                                                                                                  safeSetState(() {});
                                                                                                                  FFAppState().HTMLMessage = valueOrDefault<String>(
                                                                                                                    tickets3Item.observacoes,
                                                                                                                    'Digite seu texto aqui...',
                                                                                                                  );
                                                                                                                  FFAppState().update(() {});

                                                                                                                  context.pushNamed(
                                                                                                                    'detalhePedidoExata',
                                                                                                                    queryParameters: {
                                                                                                                      'id': serializeParam(
                                                                                                                        tickets3Item.id,
                                                                                                                        ParamType.int,
                                                                                                                      ),
                                                                                                                      'data': serializeParam(
                                                                                                                        tickets3Item.previsaoEntrega,
                                                                                                                        ParamType.DateTime,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                  );

                                                                                                                  FFAppState().drawerTamanho = 270.0;
                                                                                                                  FFAppState().update(() {});
                                                                                                                  FFAppState().menu = false;
                                                                                                                  FFAppState().update(() {});
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(12.0),
                                                                                                                      bottomRight: Radius.circular(12.0),
                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  width: 10.0,
                                                                                                                                  height: 12.0,
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                ),
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(
                                                                                                                                    color: Color(0xD63A2DA5),
                                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                                                      bottomRight: Radius.circular(0.0),
                                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  child: Padding(
                                                                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.condicaoPagamento,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            fontSize: 12.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Padding(
                                                                                                                              padding: const EdgeInsets.all(16.0),
                                                                                                                              child: Column(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                    children: [
                                                                                                                                      Expanded(
                                                                                                                                        child: Row(
                                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                                          children: [
                                                                                                                                            Padding(
                                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                              child: Icon(
                                                                                                                                                Icons.calendar_month,
                                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                                size: 18.0,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Expanded(
                                                                                                                                              child: Text(
                                                                                                                                                '${valueOrDefault<String>(
                                                                                                                                                  dateTimeFormat(
                                                                                                                                                    "dd/MM/yyyy",
                                                                                                                                                    functions.formatDate(tickets3Item.createdAt.toString()),
                                                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                  ),
                                                                                                                                                  'Não informado',
                                                                                                                                                )} - ${dateTimeFormat(
                                                                                                                                                  "Hm",
                                                                                                                                                  tickets3Item.createdAt,
                                                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                )}',
                                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                                    ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      AlignedTooltip(
                                                                                                                                        content: Padding(
                                                                                                                                          padding: const EdgeInsets.all(12.0),
                                                                                                                                          child: Text(
                                                                                                                                            'Separado por - ${valueOrDefault<String>(
                                                                                                                                              tickets3Item.bipadoPor,
                                                                                                                                              'Não informado',
                                                                                                                                            )}',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        offset: 4.0,
                                                                                                                                        preferredDirection: AxisDirection.up,
                                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                                        backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                        elevation: 4.0,
                                                                                                                                        tailBaseWidth: 24.0,
                                                                                                                                        tailLength: 12.0,
                                                                                                                                        waitDuration: const Duration(milliseconds: 100),
                                                                                                                                        showDuration: const Duration(milliseconds: 1),
                                                                                                                                        triggerMode: TooltipTriggerMode.tap,
                                                                                                                                        child: Builder(
                                                                                                                                          builder: (context) => InkWell(
                                                                                                                                            splashColor: Colors.transparent,
                                                                                                                                            focusColor: Colors.transparent,
                                                                                                                                            hoverColor: Colors.transparent,
                                                                                                                                            highlightColor: Colors.transparent,
                                                                                                                                            onTap: () async {
                                                                                                                                              await showDialog(
                                                                                                                                                context: context,
                                                                                                                                                builder: (dialogContext) {
                                                                                                                                                  return Dialog(
                                                                                                                                                    elevation: 0,
                                                                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                                                    child: GestureDetector(
                                                                                                                                                      onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                                                      child: InformacoesSeparacaoWidget(
                                                                                                                                                        pedido: tickets3Item,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  );
                                                                                                                                                },
                                                                                                                                              );
                                                                                                                                            },
                                                                                                                                            child: FaIcon(
                                                                                                                                              FontAwesomeIcons.clock,
                                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                              size: 20.0,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.person_2,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.razaoSocial,
                                                                                                                                            'Não informado',
                                                                                                                                          ).maybeHandleOverflow(
                                                                                                                                            maxChars: 20,
                                                                                                                                            replacement: '…',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.numbers_sharp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.cnpj,
                                                                                                                                            'Não informado',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.attach_money,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          formatNumber(
                                                                                                                                            tickets3Item.valor,
                                                                                                                                            formatType: FormatType.custom,
                                                                                                                                            format: '###,##0.00',
                                                                                                                                            locale: 'pt_BR',
                                                                                                                                          ),
                                                                                                                                          '0,00',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.title_sharp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          '${valueOrDefault<String>(
                                                                                                                                            tickets3Item.cidade,
                                                                                                                                            'Não informado',
                                                                                                                                          )} - ${valueOrDefault<String>(
                                                                                                                                            tickets3Item.estado,
                                                                                                                                            'Não informado',
                                                                                                                                          )}',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Expanded(
                                                                                                                                        child: Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              tickets3Item.fantasia,
                                                                                                                                              'Não informado',
                                                                                                                                            ).maybeHandleOverflow(
                                                                                                                                              maxChars: 30,
                                                                                                                                              replacement: '…',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ].divide(const SizedBox(height: 6.0)),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(
                                                                                                    animationsMap['containerOnPageLoadAnimation3']!,
                                                                                                    effects: [
                                                                                                      MoveEffect(
                                                                                                        curve: Curves.easeInOut,
                                                                                                        delay: valueOrDefault<double>(
                                                                                                          tickets3Index * 100,
                                                                                                          0.0,
                                                                                                        ).ms,
                                                                                                        duration: 600.0.ms,
                                                                                                        begin: const Offset(-400.0, 0.0),
                                                                                                        end: const Offset(0.0, 0.0),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation3']!);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            8.0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              900.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                4.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(10.0),
                                                                                      topRight: Radius.circular(10.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                        child: Text(
                                                                                          'Aguardando coleta - ${valueOrDefault<String>(
                                                                                            pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aguardando coleta').toList().length.toString(),
                                                                                            '0',
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                Container(
                                                                                  height: 820.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final tickets3 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aguardando coleta').toList();

                                                                                      return ListView.builder(
                                                                                        padding: const EdgeInsets.fromLTRB(
                                                                                          0,
                                                                                          0,
                                                                                          0,
                                                                                          20.0,
                                                                                        ),
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: tickets3.length,
                                                                                        itemBuilder: (context, tickets3Index) {
                                                                                          final tickets3Item = tickets3[tickets3Index];
                                                                                          return Stack(
                                                                                            children: [
                                                                                              if (functions.pesquisaCopy(_model.textController1.text, tickets3Item.numeroMercos, tickets3Item.razaoSocial, tickets3Item.fantasia, tickets3Item.cnpj, tickets3Item.vendedor) ?? true)
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                width: 100.0,
                                                                                                                height: 70.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                    bottomRight: Radius.circular(0.0),
                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                    topRight: Radius.circular(12.0),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        AlignedTooltip(
                                                                                                                          content: Padding(
                                                                                                                            padding: const EdgeInsets.all(12.0),
                                                                                                                            child: Text(
                                                                                                                              'Atrasado ${valueOrDefault<String>(
                                                                                                                                functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                                '0',
                                                                                                                              )} dia(s)',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          offset: 4.0,
                                                                                                                          preferredDirection: AxisDirection.up,
                                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                                          backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          elevation: 4.0,
                                                                                                                          tailBaseWidth: 24.0,
                                                                                                                          tailLength: 12.0,
                                                                                                                          waitDuration: const Duration(milliseconds: 100),
                                                                                                                          showDuration: const Duration(milliseconds: 1),
                                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                                          child: Visibility(
                                                                                                                            visible: functions.verificaNumeroCopy(functions.tempoSemComprar(tickets3Item.createdAt)) == false,
                                                                                                                            child: Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atrasado',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        if (functions.verificaNumeroCopy(functions.tempoSemComprar(tickets3Item.createdAt)) == true)
                                                                                                                          Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                                bottomRight: Radius.circular(12.0),
                                                                                                                                topLeft: Radius.circular(12.0),
                                                                                                                                topRight: Radius.circular(0.0),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                'Atenção',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      fontSize: 12.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        Container(
                                                                                                                          width: 10.0,
                                                                                                                          height: 12.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Expanded(
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Expanded(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                                                child: Column(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.numeroMercos,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                                            fontSize: 18.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.vendedor,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                            fontSize: 12.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  FFAppState().HTMLMessage = 'Digite seu texto aqui...';
                                                                                                                  safeSetState(() {});
                                                                                                                  FFAppState().textFormHtmlEditor = valueOrDefault<String>(
                                                                                                                    tickets3Item.observacoes,
                                                                                                                    'Digite seu texto aqui...',
                                                                                                                  );
                                                                                                                  FFAppState().update(() {});

                                                                                                                  context.pushNamed(
                                                                                                                    'detalhePedidoExata',
                                                                                                                    queryParameters: {
                                                                                                                      'id': serializeParam(
                                                                                                                        tickets3Item.id,
                                                                                                                        ParamType.int,
                                                                                                                      ),
                                                                                                                      'data': serializeParam(
                                                                                                                        tickets3Item.previsaoEntrega,
                                                                                                                        ParamType.DateTime,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                  );
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(12.0),
                                                                                                                      bottomRight: Radius.circular(12.0),
                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  width: 10.0,
                                                                                                                                  height: 12.0,
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                ),
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(
                                                                                                                                    color: Color(0xD63A2DA5),
                                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                                                      bottomRight: Radius.circular(0.0),
                                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  child: Padding(
                                                                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.condicaoPagamento,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            fontSize: 12.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Padding(
                                                                                                                              padding: const EdgeInsets.all(16.0),
                                                                                                                              child: Column(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                    children: [
                                                                                                                                      Expanded(
                                                                                                                                        child: Row(
                                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                                          children: [
                                                                                                                                            Padding(
                                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                              child: Icon(
                                                                                                                                                Icons.calendar_month,
                                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                                size: 18.0,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Expanded(
                                                                                                                                              child: Text(
                                                                                                                                                '${valueOrDefault<String>(
                                                                                                                                                  dateTimeFormat(
                                                                                                                                                    "dd/MM/yyyy",
                                                                                                                                                    functions.formatDate(tickets3Item.createdAt.toString()),
                                                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                  ),
                                                                                                                                                  'Não informado',
                                                                                                                                                )} - ${dateTimeFormat(
                                                                                                                                                  "Hm",
                                                                                                                                                  tickets3Item.createdAt,
                                                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                )}',
                                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                                    ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      AlignedTooltip(
                                                                                                                                        content: Padding(
                                                                                                                                          padding: const EdgeInsets.all(12.0),
                                                                                                                                          child: Text(
                                                                                                                                            'Separado por - ${valueOrDefault<String>(
                                                                                                                                              tickets3Item.bipadoPor,
                                                                                                                                              'Não informado',
                                                                                                                                            )}',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        offset: 4.0,
                                                                                                                                        preferredDirection: AxisDirection.up,
                                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                                        backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                        elevation: 4.0,
                                                                                                                                        tailBaseWidth: 24.0,
                                                                                                                                        tailLength: 12.0,
                                                                                                                                        waitDuration: const Duration(milliseconds: 100),
                                                                                                                                        showDuration: const Duration(milliseconds: 1),
                                                                                                                                        triggerMode: TooltipTriggerMode.tap,
                                                                                                                                        child: Builder(
                                                                                                                                          builder: (context) => InkWell(
                                                                                                                                            splashColor: Colors.transparent,
                                                                                                                                            focusColor: Colors.transparent,
                                                                                                                                            hoverColor: Colors.transparent,
                                                                                                                                            highlightColor: Colors.transparent,
                                                                                                                                            onTap: () async {
                                                                                                                                              await showDialog(
                                                                                                                                                context: context,
                                                                                                                                                builder: (dialogContext) {
                                                                                                                                                  return Dialog(
                                                                                                                                                    elevation: 0,
                                                                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                                                    child: GestureDetector(
                                                                                                                                                      onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                                                      child: InformacoesSeparacaoWidget(
                                                                                                                                                        pedido: tickets3Item,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  );
                                                                                                                                                },
                                                                                                                                              );
                                                                                                                                            },
                                                                                                                                            child: FaIcon(
                                                                                                                                              FontAwesomeIcons.clock,
                                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                              size: 20.0,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.person_2,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.razaoSocial,
                                                                                                                                            'Não informado',
                                                                                                                                          ).maybeHandleOverflow(
                                                                                                                                            maxChars: 20,
                                                                                                                                            replacement: '…',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.numbers_sharp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.cnpj,
                                                                                                                                            'Não informado',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.attach_money,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          formatNumber(
                                                                                                                                            tickets3Item.valor,
                                                                                                                                            formatType: FormatType.custom,
                                                                                                                                            format: '###,##0.00',
                                                                                                                                            locale: 'pt_BR',
                                                                                                                                          ),
                                                                                                                                          '0,00',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.title_sharp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          '${valueOrDefault<String>(
                                                                                                                                            tickets3Item.cidade,
                                                                                                                                            'Não informado',
                                                                                                                                          )} - ${valueOrDefault<String>(
                                                                                                                                            tickets3Item.estado,
                                                                                                                                            'Não informado',
                                                                                                                                          )}',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Expanded(
                                                                                                                                        child: Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              tickets3Item.fantasia,
                                                                                                                                              'Não informado',
                                                                                                                                            ).maybeHandleOverflow(
                                                                                                                                              maxChars: 30,
                                                                                                                                              replacement: '…',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ].divide(const SizedBox(height: 6.0)),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(
                                                                                                    animationsMap['containerOnPageLoadAnimation4']!,
                                                                                                    effects: [
                                                                                                      MoveEffect(
                                                                                                        curve: Curves.easeInOut,
                                                                                                        delay: valueOrDefault<double>(
                                                                                                          tickets3Index * 100,
                                                                                                          0.0,
                                                                                                        ).ms,
                                                                                                        duration: 600.0.ms,
                                                                                                        begin: const Offset(-400.0, 0.0),
                                                                                                        end: const Offset(0.0, 0.0),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation4']!);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            8.0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              900.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                4.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(10.0),
                                                                                      topRight: Radius.circular(10.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                        child: Text(
                                                                                          'Coletado - ${valueOrDefault<String>(
                                                                                            pedidosCopyPedidosExataRowList.where((e) => e.status == 'Coletado').toList().length.toString(),
                                                                                            '0',
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                Container(
                                                                                  height: 820.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final tickets3 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Coletado').toList();

                                                                                      return ListView.builder(
                                                                                        padding: const EdgeInsets.fromLTRB(
                                                                                          0,
                                                                                          0,
                                                                                          0,
                                                                                          20.0,
                                                                                        ),
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: tickets3.length,
                                                                                        itemBuilder: (context, tickets3Index) {
                                                                                          final tickets3Item = tickets3[tickets3Index];
                                                                                          return Stack(
                                                                                            children: [
                                                                                              if (functions.pesquisaCopy(_model.textController1.text, tickets3Item.numeroMercos, tickets3Item.razaoSocial, tickets3Item.fantasia, tickets3Item.cnpj, tickets3Item.vendedor) ?? true)
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                width: 100.0,
                                                                                                                height: 70.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                    bottomRight: Radius.circular(0.0),
                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                    topRight: Radius.circular(12.0),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                      children: [
                                                                                                                        Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            if (functions.verificaNumeroCopy(functions.tempoSemComprar(tickets3Item.createdAt)) == true)
                                                                                                                              Container(
                                                                                                                                decoration: BoxDecoration(
                                                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                                    bottomRight: Radius.circular(12.0),
                                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                                    topRight: Radius.circular(0.0),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                child: Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                  child: Text(
                                                                                                                                    'Atenção',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                          fontSize: 12.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            if ((functions.verificaNumeroCopy(functions.tempoSemComprar(tickets3Item.createdAt)) == false) && (tickets3Item.status != 'Coletado'))
                                                                                                                              Container(
                                                                                                                                decoration: BoxDecoration(
                                                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                                    bottomRight: Radius.circular(12.0),
                                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                                    topRight: Radius.circular(0.0),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                child: Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                  child: Text(
                                                                                                                                    'Atrasado',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                          fontSize: 12.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        if (tickets3Item.motivoPendente != null && tickets3Item.motivoPendente != '')
                                                                                                                          AlignedTooltip(
                                                                                                                            content: Padding(
                                                                                                                              padding: const EdgeInsets.all(12.0),
                                                                                                                              child: Text(
                                                                                                                                tickets3Item.motivoPendente!,
                                                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            offset: 4.0,
                                                                                                                            preferredDirection: AxisDirection.up,
                                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                                            backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                            elevation: 4.0,
                                                                                                                            tailBaseWidth: 24.0,
                                                                                                                            tailLength: 12.0,
                                                                                                                            waitDuration: const Duration(milliseconds: 100),
                                                                                                                            showDuration: const Duration(milliseconds: 1),
                                                                                                                            triggerMode: TooltipTriggerMode.tap,
                                                                                                                            child: Visibility(
                                                                                                                              visible: tickets3Item.motivoPendente != null && tickets3Item.motivoPendente != '',
                                                                                                                              child: Builder(
                                                                                                                                builder: (context) => InkWell(
                                                                                                                                  splashColor: Colors.transparent,
                                                                                                                                  focusColor: Colors.transparent,
                                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                                  onTap: () async {
                                                                                                                                    await showDialog(
                                                                                                                                      context: context,
                                                                                                                                      builder: (dialogContext) {
                                                                                                                                        return Dialog(
                                                                                                                                          elevation: 0,
                                                                                                                                          insetPadding: EdgeInsets.zero,
                                                                                                                                          backgroundColor: Colors.transparent,
                                                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                                          child: GestureDetector(
                                                                                                                                            onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                                            child: InformacoesProblemaNaEntregaWidget(
                                                                                                                                              pedido: tickets3Item,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        );
                                                                                                                                      },
                                                                                                                                    );
                                                                                                                                  },
                                                                                                                                  child: Container(
                                                                                                                                    decoration: BoxDecoration(
                                                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                                        bottomLeft: Radius.circular(12.0),
                                                                                                                                        bottomRight: Radius.circular(0.0),
                                                                                                                                        topLeft: Radius.circular(0.0),
                                                                                                                                        topRight: Radius.circular(12.0),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    child: Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Text(
                                                                                                                                        'Problema na entrega',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                              fontSize: 12.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        Container(
                                                                                                                          width: 10.0,
                                                                                                                          height: 12.0,
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Expanded(
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Expanded(
                                                                                                                              child: Column(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      tickets3Item.numeroMercos,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                                          fontSize: 18.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                  Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      tickets3Item.vendedor,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                          fontSize: 12.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  FFAppState().HTMLMessage = 'Digite seu texto aqui...';
                                                                                                                  safeSetState(() {});
                                                                                                                  FFAppState().textFormHtmlEditor = valueOrDefault<String>(
                                                                                                                    tickets3Item.observacoes,
                                                                                                                    'Digite seu texto aqui...',
                                                                                                                  );
                                                                                                                  FFAppState().update(() {});

                                                                                                                  context.pushNamed(
                                                                                                                    'detalhePedidoExata',
                                                                                                                    queryParameters: {
                                                                                                                      'id': serializeParam(
                                                                                                                        tickets3Item.id,
                                                                                                                        ParamType.int,
                                                                                                                      ),
                                                                                                                      'data': serializeParam(
                                                                                                                        tickets3Item.previsaoEntrega,
                                                                                                                        ParamType.DateTime,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                  );
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(12.0),
                                                                                                                      bottomRight: Radius.circular(12.0),
                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Container(
                                                                                                                                  width: 10.0,
                                                                                                                                  height: 12.0,
                                                                                                                                  decoration: const BoxDecoration(),
                                                                                                                                ),
                                                                                                                                Container(
                                                                                                                                  decoration: const BoxDecoration(
                                                                                                                                    color: Color(0xD63A2DA5),
                                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                                                      bottomRight: Radius.circular(0.0),
                                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  child: Padding(
                                                                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.condicaoPagamento,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            fontSize: 12.0,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Padding(
                                                                                                                              padding: const EdgeInsets.all(16.0),
                                                                                                                              child: Column(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                    children: [
                                                                                                                                      Expanded(
                                                                                                                                        child: Row(
                                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                                          children: [
                                                                                                                                            Padding(
                                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                              child: Icon(
                                                                                                                                                Icons.calendar_month,
                                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                                size: 18.0,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Expanded(
                                                                                                                                              child: Text(
                                                                                                                                                '${valueOrDefault<String>(
                                                                                                                                                  dateTimeFormat(
                                                                                                                                                    "dd/MM/yyyy",
                                                                                                                                                    functions.formatDate(tickets3Item.createdAt.toString()),
                                                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                  ),
                                                                                                                                                  'Não informado',
                                                                                                                                                )} - ${dateTimeFormat(
                                                                                                                                                  "Hm",
                                                                                                                                                  tickets3Item.createdAt,
                                                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                                                )}',
                                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                                    ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      AlignedTooltip(
                                                                                                                                        content: Padding(
                                                                                                                                          padding: const EdgeInsets.all(12.0),
                                                                                                                                          child: Text(
                                                                                                                                            'Separado por - ${valueOrDefault<String>(
                                                                                                                                              tickets3Item.bipadoPor,
                                                                                                                                              'Não informado',
                                                                                                                                            )}',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        offset: 4.0,
                                                                                                                                        preferredDirection: AxisDirection.up,
                                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                                        backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                        elevation: 4.0,
                                                                                                                                        tailBaseWidth: 24.0,
                                                                                                                                        tailLength: 12.0,
                                                                                                                                        waitDuration: const Duration(milliseconds: 100),
                                                                                                                                        showDuration: const Duration(milliseconds: 1),
                                                                                                                                        triggerMode: TooltipTriggerMode.tap,
                                                                                                                                        child: Builder(
                                                                                                                                          builder: (context) => InkWell(
                                                                                                                                            splashColor: Colors.transparent,
                                                                                                                                            focusColor: Colors.transparent,
                                                                                                                                            hoverColor: Colors.transparent,
                                                                                                                                            highlightColor: Colors.transparent,
                                                                                                                                            onTap: () async {
                                                                                                                                              await showDialog(
                                                                                                                                                context: context,
                                                                                                                                                builder: (dialogContext) {
                                                                                                                                                  return Dialog(
                                                                                                                                                    elevation: 0,
                                                                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                                                    child: GestureDetector(
                                                                                                                                                      onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                                                      child: InformacoesSeparacaoWidget(
                                                                                                                                                        pedido: tickets3Item,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  );
                                                                                                                                                },
                                                                                                                                              );
                                                                                                                                            },
                                                                                                                                            child: FaIcon(
                                                                                                                                              FontAwesomeIcons.clock,
                                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                              size: 20.0,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.person_2,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.razaoSocial,
                                                                                                                                            'Não informado',
                                                                                                                                          ).maybeHandleOverflow(
                                                                                                                                            maxChars: 20,
                                                                                                                                            replacement: '…',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.numbers_sharp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.cnpj,
                                                                                                                                            'Não informado',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.attach_money,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          formatNumber(
                                                                                                                                            tickets3Item.valor,
                                                                                                                                            formatType: FormatType.custom,
                                                                                                                                            format: '###,##0.00',
                                                                                                                                            locale: 'pt_BR',
                                                                                                                                          ),
                                                                                                                                          '0,00',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.title_sharp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Expanded(
                                                                                                                                        child: Text(
                                                                                                                                          '${valueOrDefault<String>(
                                                                                                                                            tickets3Item.cidade,
                                                                                                                                            'Não informado',
                                                                                                                                          )} - ${valueOrDefault<String>(
                                                                                                                                            tickets3Item.estado,
                                                                                                                                            'Não informado',
                                                                                                                                          )}',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Expanded(
                                                                                                                                        child: Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                          child: Text(
                                                                                                                                            valueOrDefault<String>(
                                                                                                                                              tickets3Item.fantasia,
                                                                                                                                              'Não informado',
                                                                                                                                            ).maybeHandleOverflow(
                                                                                                                                              maxChars: 30,
                                                                                                                                              replacement: '…',
                                                                                                                                            ),
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ].divide(const SizedBox(height: 6.0)),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(
                                                                                                    animationsMap['containerOnPageLoadAnimation5']!,
                                                                                                    effects: [
                                                                                                      MoveEffect(
                                                                                                        curve: Curves.easeInOut,
                                                                                                        delay: valueOrDefault<double>(
                                                                                                          tickets3Index * 100,
                                                                                                          0.0,
                                                                                                        ).ms,
                                                                                                        duration: 600.0.ms,
                                                                                                        begin: const Offset(-400.0, 0.0),
                                                                                                        end: const Offset(0.0, 0.0),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation5']!);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          desktop: false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            500.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Aberto - ${valueOrDefault<String>(
                                                                                    pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aberto').toList().length.toString(),
                                                                                    '0',
                                                                                  )}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                const Divider(
                                                                                  thickness: 1.0,
                                                                                  color: Color(0x9F606A85),
                                                                                ),
                                                                                Container(
                                                                                  height: 500.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final pedido = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aberto').toList();

                                                                                      return ListView.builder(
                                                                                        padding: EdgeInsets.zero,
                                                                                        primary: false,
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: pedido.length,
                                                                                        itemBuilder: (context, pedidoIndex) {
                                                                                          final pedidoItem = pedido[pedidoIndex];
                                                                                          return Visibility(
                                                                                            visible: functions.pesquisa(_model.textController1.text, pedidoItem.razaoSocial, pedidoItem.numeroMercos, pedidoItem.fantasia) ?? true,
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                              child: Container(
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Container(
                                                                                                            width: 100.0,
                                                                                                            height: 60.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                bottomRight: Radius.circular(0.0),
                                                                                                                topLeft: Radius.circular(12.0),
                                                                                                                topRight: Radius.circular(12.0),
                                                                                                              ),
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                          functions.tempoSemComprar(pedidoItem.createdAt),
                                                                                                                          '0',
                                                                                                                        )) ==
                                                                                                                        false)
                                                                                                                      Container(
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                                                          borderRadius: const BorderRadius.only(
                                                                                                                            bottomLeft: Radius.circular(0.0),
                                                                                                                            bottomRight: Radius.circular(12.0),
                                                                                                                            topLeft: Radius.circular(12.0),
                                                                                                                            topRight: Radius.circular(0.0),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        child: Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'Atrasado',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  fontSize: 12.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                          functions.tempoSemComprar(pedidoItem.createdAt),
                                                                                                                          '0',
                                                                                                                        )) ==
                                                                                                                        true)
                                                                                                                      Container(
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                          borderRadius: const BorderRadius.only(
                                                                                                                            bottomLeft: Radius.circular(0.0),
                                                                                                                            bottomRight: Radius.circular(12.0),
                                                                                                                            topLeft: Radius.circular(12.0),
                                                                                                                            topRight: Radius.circular(0.0),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        child: Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'Atenção',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  fontSize: 12.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    Container(
                                                                                                                      width: 10.0,
                                                                                                                      height: 12.0,
                                                                                                                      decoration: const BoxDecoration(),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          pedidoItem.numeroMercos,
                                                                                                                          'Não informado',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              fontSize: 18.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                      Container(
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).warning,
                                                                                                                          borderRadius: BorderRadius.circular(14.0),
                                                                                                                        ),
                                                                                                                        child: Padding(
                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                                                          child: Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              pedidoItem.status,
                                                                                                                              'Não informado',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w600,
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
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: InkWell(
                                                                                                            splashColor: Colors.transparent,
                                                                                                            focusColor: Colors.transparent,
                                                                                                            hoverColor: Colors.transparent,
                                                                                                            highlightColor: Colors.transparent,
                                                                                                            onTap: () async {},
                                                                                                            child: Container(
                                                                                                              width: 100.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                  bottomLeft: Radius.circular(12.0),
                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                  topLeft: Radius.circular(0.0),
                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                child: Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                  children: [
                                                                                                                    Expanded(
                                                                                                                      child: SingleChildScrollView(
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.calendar_month,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      '${valueOrDefault<String>(
                                                                                                                                        dateTimeFormat(
                                                                                                                                          "dd/MM/yyyy",
                                                                                                                                          functions.formatDate(valueOrDefault<String>(
                                                                                                                                            pedidoItem.createdAt.toString(),
                                                                                                                                            'Não informado',
                                                                                                                                          )),
                                                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                                                        ),
                                                                                                                                        'Não informado',
                                                                                                                                      )} - ${valueOrDefault<String>(
                                                                                                                                        dateTimeFormat(
                                                                                                                                          "Hm",
                                                                                                                                          pedidoItem.createdAt,
                                                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                                                        ),
                                                                                                                                        'Não informado',
                                                                                                                                      )}',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                  child: Icon(
                                                                                                                                    Icons.person_2,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 18.0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      pedidoItem.razaoSocial,
                                                                                                                                      'Não informado',
                                                                                                                                    ).maybeHandleOverflow(
                                                                                                                                      maxChars: 20,
                                                                                                                                      replacement: '…',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                  child: Icon(
                                                                                                                                    Icons.numbers_sharp,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 18.0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      pedidoItem.cnpj,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                  child: Icon(
                                                                                                                                    Icons.attach_money,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 18.0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      formatNumber(
                                                                                                                                        pedidoItem.valor,
                                                                                                                                        formatType: FormatType.decimal,
                                                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                                                      ),
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                  child: Icon(
                                                                                                                                    Icons.title,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 18.0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                Expanded(
                                                                                                                                  child: Text(
                                                                                                                                    '${valueOrDefault<String>(
                                                                                                                                      pedidoItem.cidade,
                                                                                                                                      'Não informado',
                                                                                                                                    )} - ${valueOrDefault<String>(
                                                                                                                                      pedidoItem.estado,
                                                                                                                                      'Não informado',
                                                                                                                                    )}',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Expanded(
                                                                                                                                  child: Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        pedidoItem.fantasia,
                                                                                                                                        'Não informado',
                                                                                                                                      ).maybeHandleOverflow(
                                                                                                                                        maxChars: 30,
                                                                                                                                        replacement: '…',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ].divide(const SizedBox(height: 6.0)),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation6']!);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            20.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              500.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                16.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Expedição - ${valueOrDefault<String>(
                                                                                      pedidosCopyPedidosExataRowList.where((e) => e.status == 'Em andamento').toList().length.toString(),
                                                                                      '0',
                                                                                    )}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                  const Divider(
                                                                                    thickness: 1.0,
                                                                                    color: Color(0x9F606A85),
                                                                                  ),
                                                                                  Container(
                                                                                    height: 500.0,
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final tickets2 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Expedição').toList();

                                                                                        return ListView.builder(
                                                                                          padding: EdgeInsets.zero,
                                                                                          primary: false,
                                                                                          shrinkWrap: true,
                                                                                          scrollDirection: Axis.vertical,
                                                                                          itemCount: tickets2.length,
                                                                                          itemBuilder: (context, tickets2Index) {
                                                                                            final tickets2Item = tickets2[tickets2Index];
                                                                                            return Visibility(
                                                                                              visible: functions.pesquisa(_model.textController1.text, tickets2Item.fantasia, tickets2Item.numeroMercos, tickets2Item.razaoSocial) ?? true,
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                child: Container(
                                                                                                  decoration: const BoxDecoration(),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: Container(
                                                                                                              width: 100.0,
                                                                                                              height: 60.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                  topRight: Radius.circular(12.0),
                                                                                                                ),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                            functions.tempoSemComprar(tickets2Item.createdAt),
                                                                                                                            '0',
                                                                                                                          )) ==
                                                                                                                          false)
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                                            borderRadius: const BorderRadius.only(
                                                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                                                              bottomRight: Radius.circular(12.0),
                                                                                                                              topLeft: Radius.circular(12.0),
                                                                                                                              topRight: Radius.circular(0.0),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                            child: Text(
                                                                                                                              'Atrasado',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    fontSize: 12.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                            functions.tempoSemComprar(tickets2Item.createdAt),
                                                                                                                            '0',
                                                                                                                          )) ==
                                                                                                                          true)
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                            borderRadius: const BorderRadius.only(
                                                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                                                              bottomRight: Radius.circular(12.0),
                                                                                                                              topLeft: Radius.circular(12.0),
                                                                                                                              topRight: Radius.circular(0.0),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                            child: Text(
                                                                                                                              'Atenção',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    fontSize: 12.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      Container(
                                                                                                                        width: 10.0,
                                                                                                                        height: 12.0,
                                                                                                                        decoration: const BoxDecoration(),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                      children: [
                                                                                                                        Text(
                                                                                                                          valueOrDefault<String>(
                                                                                                                            tickets2Item.numeroMercos,
                                                                                                                            'Não informado',
                                                                                                                          ),
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                                fontSize: 18.0,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: const Color(0xD69489F5),
                                                                                                                            borderRadius: BorderRadius.circular(14.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                                                            child: Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                        tickets2Item.status,
                                                                                                                                        'Não informado',
                                                                                                                                      ) ==
                                                                                                                                      'Em andamento'
                                                                                                                                  ? 'Andamento'
                                                                                                                                  : 'Andamento',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
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
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {},
                                                                                                              child: Container(
                                                                                                                width: 100.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                    bottomLeft: Radius.circular(12.0),
                                                                                                                    bottomRight: Radius.circular(12.0),
                                                                                                                    topLeft: Radius.circular(0.0),
                                                                                                                    topRight: Radius.circular(0.0),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: SingleChildScrollView(
                                                                                                                          child: Column(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                children: [
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.calendar_month,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Text(
                                                                                                                                        '${valueOrDefault<String>(
                                                                                                                                          dateTimeFormat(
                                                                                                                                            "dd/MM/yyyy",
                                                                                                                                            functions.formatDate(valueOrDefault<String>(
                                                                                                                                              tickets2Item.createdAt.toString(),
                                                                                                                                              '0',
                                                                                                                                            )),
                                                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                                                          ),
                                                                                                                                          'Não informado',
                                                                                                                                        )} - ${valueOrDefault<String>(
                                                                                                                                          dateTimeFormat(
                                                                                                                                            "Hm",
                                                                                                                                            tickets2Item.createdAt,
                                                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                                                          ),
                                                                                                                                          '0',
                                                                                                                                        )}',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.person_2,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Expanded(
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets2Item.razaoSocial,
                                                                                                                                        'Não informado',
                                                                                                                                      ).maybeHandleOverflow(
                                                                                                                                        maxChars: 20,
                                                                                                                                        replacement: '…',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.email,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      tickets2Item.cnpj,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.attach_money,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      formatNumber(
                                                                                                                                        tickets2Item.valor,
                                                                                                                                        formatType: FormatType.decimal,
                                                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                                                      ),
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.title_sharp,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Text(
                                                                                                                                    '${valueOrDefault<String>(
                                                                                                                                      tickets2Item.cidade,
                                                                                                                                      'Não informado',
                                                                                                                                    )} - ${valueOrDefault<String>(
                                                                                                                                      tickets2Item.estado,
                                                                                                                                      'Não informado',
                                                                                                                                    )}',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Expanded(
                                                                                                                                    child: Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          tickets2Item.fantasia,
                                                                                                                                          'Não informado',
                                                                                                                                        ).maybeHandleOverflow(
                                                                                                                                          maxChars: 30,
                                                                                                                                          replacement: '…',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ].divide(const SizedBox(height: 6.0)),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation7']!);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 6.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            500.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              16.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Faturamento - ${valueOrDefault<String>(
                                                                                    pedidosCopyPedidosExataRowList.where((e) => e.status == 'Pendente').toList().length.toString(),
                                                                                    '0',
                                                                                  )}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                const Divider(
                                                                                  thickness: 1.0,
                                                                                  color: Color(0x9F606A85),
                                                                                ),
                                                                                Container(
                                                                                  height: 500.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final tickets3 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Faturamento').toList();

                                                                                      return ListView.builder(
                                                                                        padding: EdgeInsets.zero,
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: tickets3.length,
                                                                                        itemBuilder: (context, tickets3Index) {
                                                                                          final tickets3Item = tickets3[tickets3Index];
                                                                                          return Stack(
                                                                                            children: [
                                                                                              if (functions.pesquisa(_model.textController1.text, tickets3Item.fantasia, tickets3Item.numeroMercos, tickets3Item.razaoSocial) ?? true)
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                width: 100.0,
                                                                                                                height: 60.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                                    bottomRight: Radius.circular(0.0),
                                                                                                                    topLeft: Radius.circular(12.0),
                                                                                                                    topRight: Radius.circular(12.0),
                                                                                                                  ),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                              functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                              '0',
                                                                                                                            )) ==
                                                                                                                            false)
                                                                                                                          Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                                bottomRight: Radius.circular(12.0),
                                                                                                                                topLeft: Radius.circular(12.0),
                                                                                                                                topRight: Radius.circular(0.0),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                'Atrasado',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      fontSize: 12.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                              functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                              '0',
                                                                                                                            )) ==
                                                                                                                            true)
                                                                                                                          Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                              borderRadius: const BorderRadius.only(
                                                                                                                                bottomLeft: Radius.circular(0.0),
                                                                                                                                bottomRight: Radius.circular(12.0),
                                                                                                                                topLeft: Radius.circular(12.0),
                                                                                                                                topRight: Radius.circular(0.0),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                'Atenção',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      fontSize: 12.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        Container(
                                                                                                                          width: 10.0,
                                                                                                                          height: 12.0,
                                                                                                                          decoration: const BoxDecoration(),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Padding(
                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                      child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                        children: [
                                                                                                                          Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              tickets3Item.numeroMercos,
                                                                                                                              'Não informado',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                                  fontSize: 18.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                          Container(
                                                                                                                            decoration: BoxDecoration(
                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                              borderRadius: BorderRadius.circular(14.0),
                                                                                                                            ),
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                                                              child: Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets3Item.status,
                                                                                                                                  'Não informado',
                                                                                                                                ),
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
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
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {},
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(12.0),
                                                                                                                      bottomRight: Radius.circular(12.0),
                                                                                                                      topLeft: Radius.circular(0.0),
                                                                                                                      topRight: Radius.circular(0.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Column(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                children: [
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                        child: Icon(
                                                                                                                                          Icons.calendar_month,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 18.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      Text(
                                                                                                                                        '${valueOrDefault<String>(
                                                                                                                                          dateTimeFormat(
                                                                                                                                            "dd/MM/yyyy",
                                                                                                                                            functions.formatDate(tickets3Item.createdAt.toString()),
                                                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                                                          ),
                                                                                                                                          'Não informado',
                                                                                                                                        )} - ${dateTimeFormat(
                                                                                                                                          "Hm",
                                                                                                                                          tickets3Item.createdAt,
                                                                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                                                                        )}',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                  const Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [],
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.person_2,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Expanded(
                                                                                                                                    child: Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.razaoSocial,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.numbers_sharp,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      tickets3Item.cnpj,
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.attach_money,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      formatNumber(
                                                                                                                                        tickets3Item.valor,
                                                                                                                                        formatType: FormatType.decimal,
                                                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                                                      ),
                                                                                                                                      'Não informado',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Padding(
                                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                    child: Icon(
                                                                                                                                      Icons.title_sharp,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 18.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Expanded(
                                                                                                                                    child: Text(
                                                                                                                                      '${valueOrDefault<String>(
                                                                                                                                        tickets3Item.cidade,
                                                                                                                                        'Não informado',
                                                                                                                                      )} - ${valueOrDefault<String>(
                                                                                                                                        tickets3Item.estado,
                                                                                                                                        'Não informado',
                                                                                                                                      )}',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Expanded(
                                                                                                                                    child: Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          tickets3Item.fantasia,
                                                                                                                                          'Não informado',
                                                                                                                                        ).maybeHandleOverflow(
                                                                                                                                          maxChars: 30,
                                                                                                                                          replacement: '…',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ].divide(const SizedBox(height: 6.0)),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation8']!);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              500.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                16.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Aguardando coleta - ${valueOrDefault<String>(
                                                                                      pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aguardando coleta').toList().length.toString(),
                                                                                      '0',
                                                                                    )}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                  const Divider(
                                                                                    thickness: 1.0,
                                                                                    color: Color(0x9F606A85),
                                                                                  ),
                                                                                  Container(
                                                                                    height: 500.0,
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final tickets3 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Aguardando coleta').toList();

                                                                                        return ListView.builder(
                                                                                          padding: EdgeInsets.zero,
                                                                                          shrinkWrap: true,
                                                                                          scrollDirection: Axis.vertical,
                                                                                          itemCount: tickets3.length,
                                                                                          itemBuilder: (context, tickets3Index) {
                                                                                            final tickets3Item = tickets3[tickets3Index];
                                                                                            return Stack(
                                                                                              children: [
                                                                                                if (functions.pesquisa(_model.textController1.text, tickets3Item.fantasia, tickets3Item.numeroMercos, tickets3Item.razaoSocial) ?? true)
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                    child: Container(
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Expanded(
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  height: 60.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                                      bottomRight: Radius.circular(0.0),
                                                                                                                      topLeft: Radius.circular(12.0),
                                                                                                                      topRight: Radius.circular(12.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                                functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                                '0',
                                                                                                                              )) ==
                                                                                                                              false)
                                                                                                                            Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atrasado',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                                functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                                '0',
                                                                                                                              )) ==
                                                                                                                              true)
                                                                                                                            Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atenção',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          Container(
                                                                                                                            width: 10.0,
                                                                                                                            height: 12.0,
                                                                                                                            decoration: const BoxDecoration(),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      Padding(
                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                tickets3Item.numeroMercos,
                                                                                                                                'Não informado',
                                                                                                                              ),
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                borderRadius: BorderRadius.circular(14.0),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                                                                child: Text(
                                                                                                                                  valueOrDefault<String>(
                                                                                                                                    tickets3Item.status,
                                                                                                                                    'Não informado',
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
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
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Expanded(
                                                                                                                child: InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {},
                                                                                                                  child: Container(
                                                                                                                    width: 100.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                        bottomLeft: Radius.circular(12.0),
                                                                                                                        bottomRight: Radius.circular(12.0),
                                                                                                                        topLeft: Radius.circular(0.0),
                                                                                                                        topRight: Radius.circular(0.0),
                                                                                                                      ),
                                                                                                                      border: Border.all(
                                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                      child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                        children: [
                                                                                                                          Expanded(
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                  children: [
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.calendar_month,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 18.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Text(
                                                                                                                                          '${valueOrDefault<String>(
                                                                                                                                            dateTimeFormat(
                                                                                                                                              "dd/MM/yyyy",
                                                                                                                                              functions.formatDate(tickets3Item.createdAt.toString()),
                                                                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                                                                            ),
                                                                                                                                            'Não informado',
                                                                                                                                          )} - ${dateTimeFormat(
                                                                                                                                            "Hm",
                                                                                                                                            tickets3Item.createdAt,
                                                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                                                          )}',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    const Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [],
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.person_2,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          tickets3Item.razaoSocial,
                                                                                                                                          'Não informado',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.numbers_sharp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.cnpj,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.attach_money,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        formatNumber(
                                                                                                                                          tickets3Item.valor,
                                                                                                                                          formatType: FormatType.decimal,
                                                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                                                        ),
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.title_sharp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        '${valueOrDefault<String>(
                                                                                                                                          tickets3Item.cidade,
                                                                                                                                          'Não informado',
                                                                                                                                        )} - ${valueOrDefault<String>(
                                                                                                                                          tickets3Item.estado,
                                                                                                                                          'Não informado',
                                                                                                                                        )}',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Expanded(
                                                                                                                                      child: Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.fantasia,
                                                                                                                                            'Não informado',
                                                                                                                                          ).maybeHandleOverflow(
                                                                                                                                            maxChars: 30,
                                                                                                                                            replacement: '…',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            );
                                                                                          },
                                                                                        ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation9']!);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 6.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              500.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                16.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Coletado - ${valueOrDefault<String>(
                                                                                      pedidosCopyPedidosExataRowList.where((e) => e.status == 'Coletado').toList().length.toString(),
                                                                                      '0',
                                                                                    )}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                  const Divider(
                                                                                    thickness: 1.0,
                                                                                    color: Color(0x9F606A85),
                                                                                  ),
                                                                                  Container(
                                                                                    height: 500.0,
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final tickets3 = pedidosCopyPedidosExataRowList.where((e) => e.status == 'Coletado').toList();

                                                                                        return ListView.builder(
                                                                                          padding: EdgeInsets.zero,
                                                                                          shrinkWrap: true,
                                                                                          scrollDirection: Axis.vertical,
                                                                                          itemCount: tickets3.length,
                                                                                          itemBuilder: (context, tickets3Index) {
                                                                                            final tickets3Item = tickets3[tickets3Index];
                                                                                            return Stack(
                                                                                              children: [
                                                                                                if (functions.pesquisa(_model.textController1.text, tickets3Item.fantasia, tickets3Item.numeroMercos, tickets3Item.razaoSocial) ?? true)
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                    child: Container(
                                                                                                      decoration: const BoxDecoration(),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Expanded(
                                                                                                                child: Container(
                                                                                                                  width: 100.0,
                                                                                                                  height: 60.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                                      bottomRight: Radius.circular(0.0),
                                                                                                                      topLeft: Radius.circular(12.0),
                                                                                                                      topRight: Radius.circular(12.0),
                                                                                                                    ),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                                functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                                '0',
                                                                                                                              )) ==
                                                                                                                              false)
                                                                                                                            Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atrasado',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          if (functions.verificaNumero(valueOrDefault<String>(
                                                                                                                                functions.tempoSemComprar(tickets3Item.createdAt),
                                                                                                                                '0',
                                                                                                                              )) ==
                                                                                                                              true)
                                                                                                                            Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                borderRadius: const BorderRadius.only(
                                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                                  topLeft: Radius.circular(12.0),
                                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  'Atenção',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        fontSize: 12.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          Container(
                                                                                                                            width: 10.0,
                                                                                                                            height: 12.0,
                                                                                                                            decoration: const BoxDecoration(),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      Padding(
                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                tickets3Item.numeroMercos,
                                                                                                                                'Não informado',
                                                                                                                              ),
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                borderRadius: BorderRadius.circular(14.0),
                                                                                                                              ),
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                                                                child: Text(
                                                                                                                                  valueOrDefault<String>(
                                                                                                                                    tickets3Item.status,
                                                                                                                                    'Não informado',
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
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
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Expanded(
                                                                                                                child: InkWell(
                                                                                                                  splashColor: Colors.transparent,
                                                                                                                  focusColor: Colors.transparent,
                                                                                                                  hoverColor: Colors.transparent,
                                                                                                                  highlightColor: Colors.transparent,
                                                                                                                  onTap: () async {},
                                                                                                                  child: Container(
                                                                                                                    width: 100.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                        bottomLeft: Radius.circular(12.0),
                                                                                                                        bottomRight: Radius.circular(12.0),
                                                                                                                        topLeft: Radius.circular(0.0),
                                                                                                                        topRight: Radius.circular(0.0),
                                                                                                                      ),
                                                                                                                      border: Border.all(
                                                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                                                      child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                        children: [
                                                                                                                          Expanded(
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                  children: [
                                                                                                                                    Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                          child: Icon(
                                                                                                                                            Icons.calendar_month,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 18.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Text(
                                                                                                                                          '${valueOrDefault<String>(
                                                                                                                                            dateTimeFormat(
                                                                                                                                              "dd/MM/yyyy",
                                                                                                                                              functions.formatDate(tickets3Item.createdAt.toString()),
                                                                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                                                                            ),
                                                                                                                                            'Não informado',
                                                                                                                                          )} - ${dateTimeFormat(
                                                                                                                                            "Hm",
                                                                                                                                            tickets3Item.createdAt,
                                                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                                                          )}',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    const Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [],
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.person_2,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        valueOrDefault<String>(
                                                                                                                                          tickets3Item.razaoSocial,
                                                                                                                                          'Não informado',
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.numbers_sharp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        tickets3Item.cnpj,
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.attach_money,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Text(
                                                                                                                                      valueOrDefault<String>(
                                                                                                                                        formatNumber(
                                                                                                                                          tickets3Item.valor,
                                                                                                                                          formatType: FormatType.decimal,
                                                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                                                        ),
                                                                                                                                        'Não informado',
                                                                                                                                      ),
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Padding(
                                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                                      child: Icon(
                                                                                                                                        Icons.title_sharp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 18.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    Expanded(
                                                                                                                                      child: Text(
                                                                                                                                        '${valueOrDefault<String>(
                                                                                                                                          tickets3Item.cidade,
                                                                                                                                          'Não informado',
                                                                                                                                        )} - ${valueOrDefault<String>(
                                                                                                                                          tickets3Item.estado,
                                                                                                                                          'Não informado',
                                                                                                                                        )}',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    Expanded(
                                                                                                                                      child: Padding(
                                                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                        child: Text(
                                                                                                                                          valueOrDefault<String>(
                                                                                                                                            tickets3Item.fantasia,
                                                                                                                                            'Não informado',
                                                                                                                                          ).maybeHandleOverflow(
                                                                                                                                            maxChars: 30,
                                                                                                                                            replacement: '…',
                                                                                                                                          ),
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ].divide(const SizedBox(height: 6.0)),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            );
                                                                                          },
                                                                                        ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation10']!);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 6.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                      ].divide(const SizedBox(
                                                          height: 16.0)),
                                                    ),
                                                  ),
                                                ].addToEnd(
                                                    const SizedBox(height: 50.0)),
                                              ),
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
                    ],
                  ).animateOnPageLoad(
                      animationsMap['stackOnPageLoadAnimation']!),
                ),
              ),
            ));
      },
    );
  }
}
