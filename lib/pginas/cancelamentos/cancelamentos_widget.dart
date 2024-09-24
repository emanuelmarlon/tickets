import '/backend/supabase/supabase.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cancelamentos_model.dart';
export 'cancelamentos_model.dart';

class CancelamentosWidget extends StatefulWidget {
  const CancelamentosWidget({
    super.key,
    this.cpf,
  });

  final String? cpf;

  @override
  State<CancelamentosWidget> createState() => _CancelamentosWidgetState();
}

class _CancelamentosWidgetState extends State<CancelamentosWidget>
    with TickerProviderStateMixin {
  late CancelamentosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelamentosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().transportadora != false) {
        context.pushNamed('home');
      }
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
      'listViewOnPageLoadAnimation6': AnimationInfo(
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

    return FutureBuilder<List<SuporteTRow>>(
      future: SuporteTTable().queryRows(
        queryFn: (q) => q
            .neq(
              'status',
              'Concluido',
            )
            .eq(
              'cancelamento',
              true,
            )
            .order('id'),
      ),
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
        List<SuporteTRow> cancelamentosSuporteTRowList = snapshot.data!;

        return Title(
            title: 'cancelamentos',
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
                                nomePagina: 'cancelamentos',
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
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      18.0, 18.0, 18.0, 18.0),
                                              child: SingleChildScrollView(
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
                                                            MainAxisSize.max,
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
                                                            onTap: () async {
                                                              context.safePop();
                                                            },
                                                            child: Icon(
                                                              Icons.reply_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              'Cancelamentos',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        24.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
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
                                                                    'cancelamentosGeral');
                                                              },
                                                              text: 'Todos',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 44.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
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
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                hoverBorderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
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
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 64.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .textController1,
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFocusNode1,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textController1',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              1),
                                                                      () => safeSetState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'Pesquisar...',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      suffixIcon:
                                                                          Icon(
                                                                        Icons
                                                                            .search_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    cursorColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    validator: _model
                                                                        .textController1Validator
                                                                        .asValidator(
                                                                            context),
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
                                                      tabletLandscape: false,
                                                    ))
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
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
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Aberto - ${valueOrDefault<String>(
                                                                                cancelamentosSuporteTRowList.where((e) => e.status == 'Aberto').toList().length.toString(),
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
                                                                            Builder(
                                                                              builder: (context) {
                                                                                final tickets = cancelamentosSuporteTRowList.where((e) => e.status == 'Aberto').toList();

                                                                                return ListView.builder(
                                                                                  padding: const EdgeInsets.fromLTRB(
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    20.0,
                                                                                  ),
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: tickets.length,
                                                                                  itemBuilder: (context, ticketsIndex) {
                                                                                    final ticketsItem = tickets[ticketsIndex];
                                                                                    return Visibility(
                                                                                      visible: functions.pesquisa(_model.textController1.text, ticketsItem.nome, ticketsItem.email, ticketsItem.id.toString()) ?? true,
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
                                                                                                                    functions.tempoSemComprar(ticketsItem.createdAt),
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
                                                                                                                    functions.tempoSemComprar(ticketsItem.createdAt),
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
                                                                                                                    ticketsItem.id.toString(),
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
                                                                                                                        ticketsItem.status,
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
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'detalheCancelamento',
                                                                                                          queryParameters: {
                                                                                                            'id': serializeParam(
                                                                                                              ticketsItem.id,
                                                                                                              ParamType.int,
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
                                                                                                                                      ticketsItem.createdAt.toString(),
                                                                                                                                      'Não informado',
                                                                                                                                    )),
                                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                                  ),
                                                                                                                                  'Não informado',
                                                                                                                                )} - ${valueOrDefault<String>(
                                                                                                                                  dateTimeFormat(
                                                                                                                                    "Hm",
                                                                                                                                    ticketsItem.createdAt,
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
                                                                                                                          Row(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            children: [
                                                                                                                              AlignedTooltip(
                                                                                                                                content: Padding(
                                                                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                                                                  child: Text(
                                                                                                                                    'WhatsApp',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                offset: 4.0,
                                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                elevation: 4.0,
                                                                                                                                tailBaseWidth: 24.0,
                                                                                                                                tailLength: 12.0,
                                                                                                                                waitDuration: const Duration(milliseconds: 100),
                                                                                                                                showDuration: const Duration(milliseconds: 1500),
                                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                                child: Visibility(
                                                                                                                                  visible: ticketsItem.origem == 'WhatsApp',
                                                                                                                                  child: FaIcon(
                                                                                                                                    FontAwesomeIcons.whatsapp,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 24.0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              AlignedTooltip(
                                                                                                                                content: Padding(
                                                                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                                                                  child: Text(
                                                                                                                                    'Site',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                offset: 4.0,
                                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                elevation: 4.0,
                                                                                                                                tailBaseWidth: 24.0,
                                                                                                                                tailLength: 12.0,
                                                                                                                                waitDuration: const Duration(milliseconds: 100),
                                                                                                                                showDuration: const Duration(milliseconds: 1500),
                                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                                child: Visibility(
                                                                                                                                  visible: ticketsItem.origem == 'Site',
                                                                                                                                  child: FaIcon(
                                                                                                                                    FontAwesomeIcons.internetExplorer,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 24.0,
                                                                                                                                  ),
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
                                                                                                                                ticketsItem.nome,
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
                                                                                                                              Icons.email,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 18.0,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          Expanded(
                                                                                                                            child: Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                ticketsItem.email,
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
                                                                                                                            child: FaIcon(
                                                                                                                              FontAwesomeIcons.hashtag,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 18.0,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          Expanded(
                                                                                                                            child: Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                ticketsItem.numeroPedido,
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
                                                                                                                              valueOrDefault<String>(
                                                                                                                                ticketsItem.tipoSolicitacao,
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
                                                                                                                          Expanded(
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  ticketsItem.descricao,
                                                                                                                                  'Não informado',
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
                                                                                        ).animateOnPageLoad(
                                                                                          animationsMap['containerOnPageLoadAnimation1']!,
                                                                                          effects: [
                                                                                            MoveEffect(
                                                                                              curve: Curves.easeInOut,
                                                                                              delay: valueOrDefault<double>(
                                                                                                ticketsIndex * 100,
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
                                                              padding:
                                                                  const EdgeInsetsDirectional
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
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Em andamento - ${valueOrDefault<String>(
                                                                                cancelamentosSuporteTRowList.where((e) => e.status == 'Em andamento').toList().length.toString(),
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
                                                                            Builder(
                                                                              builder: (context) {
                                                                                final tickets2 = cancelamentosSuporteTRowList.where((e) => e.status == 'Em andamento').toList();

                                                                                return ListView.builder(
                                                                                  padding: const EdgeInsets.fromLTRB(
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    20.0,
                                                                                  ),
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: tickets2.length,
                                                                                  itemBuilder: (context, tickets2Index) {
                                                                                    final tickets2Item = tickets2[tickets2Index];
                                                                                    return Visibility(
                                                                                      visible: functions.pesquisa(_model.textController1.text, tickets2Item.id.toString(), tickets2Item.email, tickets2Item.nome) ?? true,
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
                                                                                                                    tickets2Item.id.toString(),
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
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'detalheCancelamento',
                                                                                                          queryParameters: {
                                                                                                            'id': serializeParam(
                                                                                                              tickets2Item.id,
                                                                                                              ParamType.int,
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
                                                                                                                          Row(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            children: [
                                                                                                                              AlignedTooltip(
                                                                                                                                content: Padding(
                                                                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                                                                  child: Text(
                                                                                                                                    'WhatsApp',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                offset: 4.0,
                                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                elevation: 4.0,
                                                                                                                                tailBaseWidth: 24.0,
                                                                                                                                tailLength: 12.0,
                                                                                                                                waitDuration: const Duration(milliseconds: 100),
                                                                                                                                showDuration: const Duration(milliseconds: 1500),
                                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                                child: Visibility(
                                                                                                                                  visible: tickets2Item.origem == 'WhatsApp',
                                                                                                                                  child: FaIcon(
                                                                                                                                    FontAwesomeIcons.whatsapp,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 24.0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              AlignedTooltip(
                                                                                                                                content: Padding(
                                                                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                                                                  child: Text(
                                                                                                                                    'Site',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                offset: 4.0,
                                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                elevation: 4.0,
                                                                                                                                tailBaseWidth: 24.0,
                                                                                                                                tailLength: 12.0,
                                                                                                                                waitDuration: const Duration(milliseconds: 100),
                                                                                                                                showDuration: const Duration(milliseconds: 1500),
                                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                                child: Visibility(
                                                                                                                                  visible: tickets2Item.origem == 'Site',
                                                                                                                                  child: FaIcon(
                                                                                                                                    FontAwesomeIcons.internetExplorer,
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                    size: 24.0,
                                                                                                                                  ),
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
                                                                                                                                tickets2Item.nome,
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
                                                                                                                              Icons.email,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 18.0,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          Expanded(
                                                                                                                            child: Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                tickets2Item.email,
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
                                                                                                                              Icons.phone,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              size: 18.0,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              tickets2Item.telefone,
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
                                                                                                                            valueOrDefault<String>(
                                                                                                                              tickets2Item.tipoSolicitacao,
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
                                                                                                                          Expanded(
                                                                                                                            child: Padding(
                                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                              child: Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets2Item.descricao,
                                                                                                                                  'Não informado',
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
                                                                                        ).animateOnPageLoad(
                                                                                          animationsMap['containerOnPageLoadAnimation2']!,
                                                                                          effects: [
                                                                                            MoveEffect(
                                                                                              curve: Curves.easeInOut,
                                                                                              delay: valueOrDefault<double>(
                                                                                                tickets2Index * 100,
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
                                                              padding:
                                                                  const EdgeInsetsDirectional
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
                                                                        MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Pendente - ${valueOrDefault<String>(
                                                                                cancelamentosSuporteTRowList.where((e) => e.status == 'Pendente').toList().length.toString(),
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
                                                                            Builder(
                                                                              builder: (context) {
                                                                                final tickets3 = cancelamentosSuporteTRowList.where((e) => e.status == 'Pendente').toList();

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
                                                                                        if (functions.pesquisa(_model.textController1.text, tickets3Item.nome, tickets3Item.email, tickets3Item.id.toString()) ?? true)
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
                                                                                                                        tickets3Item.id.toString(),
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
                                                                                                                        color: FlutterFlowTheme.of(context).error,
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
                                                                                                          onTap: () async {
                                                                                                            context.pushNamed(
                                                                                                              'detalheCancelamento',
                                                                                                              queryParameters: {
                                                                                                                'id': serializeParam(
                                                                                                                  tickets3Item.id,
                                                                                                                  ParamType.int,
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
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Row(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    AlignedTooltip(
                                                                                                                                      content: Padding(
                                                                                                                                        padding: const EdgeInsets.all(4.0),
                                                                                                                                        child: Text(
                                                                                                                                          'WhatsApp',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      offset: 4.0,
                                                                                                                                      preferredDirection: AxisDirection.down,
                                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      elevation: 4.0,
                                                                                                                                      tailBaseWidth: 24.0,
                                                                                                                                      tailLength: 12.0,
                                                                                                                                      waitDuration: const Duration(milliseconds: 100),
                                                                                                                                      showDuration: const Duration(milliseconds: 1500),
                                                                                                                                      triggerMode: TooltipTriggerMode.tap,
                                                                                                                                      child: Visibility(
                                                                                                                                        visible: tickets3Item.origem == 'WhatsApp',
                                                                                                                                        child: FaIcon(
                                                                                                                                          FontAwesomeIcons.whatsapp,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 24.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    AlignedTooltip(
                                                                                                                                      content: Padding(
                                                                                                                                        padding: const EdgeInsets.all(4.0),
                                                                                                                                        child: Text(
                                                                                                                                          'Site',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      offset: 4.0,
                                                                                                                                      preferredDirection: AxisDirection.down,
                                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                      elevation: 4.0,
                                                                                                                                      tailBaseWidth: 24.0,
                                                                                                                                      tailLength: 12.0,
                                                                                                                                      waitDuration: const Duration(milliseconds: 100),
                                                                                                                                      showDuration: const Duration(milliseconds: 1500),
                                                                                                                                      triggerMode: TooltipTriggerMode.tap,
                                                                                                                                      child: Visibility(
                                                                                                                                        visible: tickets3Item.origem == 'Site',
                                                                                                                                        child: FaIcon(
                                                                                                                                          FontAwesomeIcons.internetExplorer,
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          size: 24.0,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
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
                                                                                                                                  tickets3Item.nome,
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
                                                                                                                                Icons.email,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 18.0,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            Expanded(
                                                                                                                              child: Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets3Item.email,
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
                                                                                                                                Icons.phone_sharp,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 18.0,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            Text(
                                                                                                                              valueOrDefault<String>(
                                                                                                                                tickets3Item.telefone,
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
                                                                                                                              valueOrDefault<String>(
                                                                                                                                tickets3Item.tipoSolicitacao,
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
                                                                                                                            Expanded(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  valueOrDefault<String>(
                                                                                                                                    tickets3Item.descricao,
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
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Aberto - ${valueOrDefault<String>(
                                                                                cancelamentosSuporteTRowList.where((e) => e.status == 'Aberto').toList().length.toString(),
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
                                                                                  final tickets = cancelamentosSuporteTRowList.where((e) => e.status == 'Aberto').toList();

                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    primary: false,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: tickets.length,
                                                                                    itemBuilder: (context, ticketsIndex) {
                                                                                      final ticketsItem = tickets[ticketsIndex];
                                                                                      return Visibility(
                                                                                        visible: functions.pesquisa(_model.textController1.text, ticketsItem.nome, ticketsItem.email, ticketsItem.id.toString()) ?? true,
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
                                                                                                                      functions.tempoSemComprar(ticketsItem.createdAt),
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
                                                                                                                      functions.tempoSemComprar(ticketsItem.createdAt),
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
                                                                                                                    'Ticket #${valueOrDefault<String>(
                                                                                                                      ticketsItem.id.toString(),
                                                                                                                      'Não informado',
                                                                                                                    )}',
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
                                                                                                                          ticketsItem.status,
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
                                                                                                        onTap: () async {
                                                                                                          context.pushNamed(
                                                                                                            'detalheCancelamento',
                                                                                                            queryParameters: {
                                                                                                              'id': serializeParam(
                                                                                                                ticketsItem.id,
                                                                                                                ParamType.int,
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
                                                                                                                                        ticketsItem.createdAt.toString(),
                                                                                                                                        'Não informado',
                                                                                                                                      )),
                                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                                    ),
                                                                                                                                    'Não informado',
                                                                                                                                  )} - ${valueOrDefault<String>(
                                                                                                                                    dateTimeFormat(
                                                                                                                                      "Hm",
                                                                                                                                      ticketsItem.createdAt,
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
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                AlignedTooltip(
                                                                                                                                  content: Padding(
                                                                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                                                                    child: Text(
                                                                                                                                      'WhatsApp',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  offset: 4.0,
                                                                                                                                  preferredDirection: AxisDirection.down,
                                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  elevation: 4.0,
                                                                                                                                  tailBaseWidth: 24.0,
                                                                                                                                  tailLength: 12.0,
                                                                                                                                  waitDuration: const Duration(milliseconds: 100),
                                                                                                                                  showDuration: const Duration(milliseconds: 1500),
                                                                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                                                                  child: Visibility(
                                                                                                                                    visible: ticketsItem.origem == 'WhatsApp',
                                                                                                                                    child: FaIcon(
                                                                                                                                      FontAwesomeIcons.whatsapp,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 24.0,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                                AlignedTooltip(
                                                                                                                                  content: Padding(
                                                                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                                                                    child: Text(
                                                                                                                                      'Site',
                                                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  offset: 4.0,
                                                                                                                                  preferredDirection: AxisDirection.down,
                                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  elevation: 4.0,
                                                                                                                                  tailBaseWidth: 24.0,
                                                                                                                                  tailLength: 12.0,
                                                                                                                                  waitDuration: const Duration(milliseconds: 100),
                                                                                                                                  showDuration: const Duration(milliseconds: 1500),
                                                                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                                                                  child: Visibility(
                                                                                                                                    visible: ticketsItem.origem == 'Site',
                                                                                                                                    child: FaIcon(
                                                                                                                                      FontAwesomeIcons.internetExplorer,
                                                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                      size: 24.0,
                                                                                                                                    ),
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
                                                                                                                                  ticketsItem.nome,
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
                                                                                                                                Icons.email,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 18.0,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            Expanded(
                                                                                                                              child: Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  ticketsItem.email,
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
                                                                                                                                Icons.phone,
                                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                size: 18.0,
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                            Expanded(
                                                                                                                              child: Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  ticketsItem.telefone,
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
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  ticketsItem.tipoSolicitacao,
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
                                                                                                                            Expanded(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                child: Text(
                                                                                                                                  valueOrDefault<String>(
                                                                                                                                    ticketsItem.descricao,
                                                                                                                                    'Não informado',
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
                                                                                  ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation4']!);
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 6.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            20.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          500.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
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
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                'Em andamento - ${valueOrDefault<String>(
                                                                                  cancelamentosSuporteTRowList.where((e) => e.status == 'Em andamento').toList().length.toString(),
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
                                                                                    final tickets2 = cancelamentosSuporteTRowList.where((e) => e.status == 'Em andamento').toList();

                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      primary: false,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: tickets2.length,
                                                                                      itemBuilder: (context, tickets2Index) {
                                                                                        final tickets2Item = tickets2[tickets2Index];
                                                                                        return Visibility(
                                                                                          visible: functions.pesquisa(_model.textController1.text, tickets2Item.id.toString(), tickets2Item.email, tickets2Item.nome) ?? true,
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
                                                                                                                      'Ticket #${valueOrDefault<String>(
                                                                                                                        tickets2Item.id.toString(),
                                                                                                                        'Não informado',
                                                                                                                      )}',
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
                                                                                                          onTap: () async {
                                                                                                            context.pushNamed(
                                                                                                              'detalheCancelamento',
                                                                                                              queryParameters: {
                                                                                                                'id': serializeParam(
                                                                                                                  tickets2Item.id,
                                                                                                                  ParamType.int,
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
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  AlignedTooltip(
                                                                                                                                    content: Padding(
                                                                                                                                      padding: const EdgeInsets.all(4.0),
                                                                                                                                      child: Text(
                                                                                                                                        'WhatsApp',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    offset: 4.0,
                                                                                                                                    preferredDirection: AxisDirection.down,
                                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    elevation: 4.0,
                                                                                                                                    tailBaseWidth: 24.0,
                                                                                                                                    tailLength: 12.0,
                                                                                                                                    waitDuration: const Duration(milliseconds: 100),
                                                                                                                                    showDuration: const Duration(milliseconds: 1500),
                                                                                                                                    triggerMode: TooltipTriggerMode.tap,
                                                                                                                                    child: Visibility(
                                                                                                                                      visible: tickets2Item.origem == 'WhatsApp',
                                                                                                                                      child: FaIcon(
                                                                                                                                        FontAwesomeIcons.whatsapp,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 24.0,
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  AlignedTooltip(
                                                                                                                                    content: Padding(
                                                                                                                                      padding: const EdgeInsets.all(4.0),
                                                                                                                                      child: Text(
                                                                                                                                        'Site',
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    offset: 4.0,
                                                                                                                                    preferredDirection: AxisDirection.down,
                                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    elevation: 4.0,
                                                                                                                                    tailBaseWidth: 24.0,
                                                                                                                                    tailLength: 12.0,
                                                                                                                                    waitDuration: const Duration(milliseconds: 100),
                                                                                                                                    showDuration: const Duration(milliseconds: 1500),
                                                                                                                                    triggerMode: TooltipTriggerMode.tap,
                                                                                                                                    child: Visibility(
                                                                                                                                      visible: tickets2Item.origem == 'Site',
                                                                                                                                      child: FaIcon(
                                                                                                                                        FontAwesomeIcons.internetExplorer,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                        size: 24.0,
                                                                                                                                      ),
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
                                                                                                                                    tickets2Item.nome,
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
                                                                                                                                  Icons.email,
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                  size: 18.0,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets2Item.email,
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
                                                                                                                                  Icons.phone,
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                  size: 18.0,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets2Item.telefone,
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
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets2Item.tipoSolicitacao,
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
                                                                                                                              Expanded(
                                                                                                                                child: Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      tickets2Item.descricao,
                                                                                                                                      'Não informado',
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
                                                                                    ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation5']!);
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Pendente - ${valueOrDefault<String>(
                                                                                cancelamentosSuporteTRowList.where((e) => e.status == 'Pendente').toList().length.toString(),
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
                                                                                  final tickets3 = cancelamentosSuporteTRowList.where((e) => e.status == 'Pendente').toList();

                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    primary: false,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: tickets3.length,
                                                                                    itemBuilder: (context, tickets3Index) {
                                                                                      final tickets3Item = tickets3[tickets3Index];
                                                                                      return Stack(
                                                                                        children: [
                                                                                          if (functions.pesquisa(_model.textController1.text, tickets3Item.nome, tickets3Item.email, tickets3Item.id.toString()) ?? true)
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
                                                                                                                        'Ticket #${valueOrDefault<String>(
                                                                                                                          tickets3Item.id.toString(),
                                                                                                                          'Não informado',
                                                                                                                        )}',
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
                                                                                                                          color: FlutterFlowTheme.of(context).error,
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
                                                                                                            onTap: () async {
                                                                                                              context.pushNamed(
                                                                                                                'detalheCancelamento',
                                                                                                                queryParameters: {
                                                                                                                  'id': serializeParam(
                                                                                                                    tickets3Item.id,
                                                                                                                    ParamType.int,
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
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    children: [
                                                                                                                                      AlignedTooltip(
                                                                                                                                        content: Padding(
                                                                                                                                          padding: const EdgeInsets.all(4.0),
                                                                                                                                          child: Text(
                                                                                                                                            'WhatsApp',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        offset: 4.0,
                                                                                                                                        preferredDirection: AxisDirection.down,
                                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        elevation: 4.0,
                                                                                                                                        tailBaseWidth: 24.0,
                                                                                                                                        tailLength: 12.0,
                                                                                                                                        waitDuration: const Duration(milliseconds: 100),
                                                                                                                                        showDuration: const Duration(milliseconds: 1500),
                                                                                                                                        triggerMode: TooltipTriggerMode.tap,
                                                                                                                                        child: Visibility(
                                                                                                                                          visible: tickets3Item.origem == 'WhatsApp',
                                                                                                                                          child: FaIcon(
                                                                                                                                            FontAwesomeIcons.whatsapp,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 24.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      AlignedTooltip(
                                                                                                                                        content: Padding(
                                                                                                                                          padding: const EdgeInsets.all(4.0),
                                                                                                                                          child: Text(
                                                                                                                                            'Site',
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        offset: 4.0,
                                                                                                                                        preferredDirection: AxisDirection.down,
                                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        elevation: 4.0,
                                                                                                                                        tailBaseWidth: 24.0,
                                                                                                                                        tailLength: 12.0,
                                                                                                                                        waitDuration: const Duration(milliseconds: 100),
                                                                                                                                        showDuration: const Duration(milliseconds: 1500),
                                                                                                                                        triggerMode: TooltipTriggerMode.tap,
                                                                                                                                        child: Visibility(
                                                                                                                                          visible: tickets3Item.origem == 'Site',
                                                                                                                                          child: FaIcon(
                                                                                                                                            FontAwesomeIcons.internetExplorer,
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                            size: 24.0,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ],
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
                                                                                                                                    tickets3Item.nome,
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
                                                                                                                                  Icons.email,
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                  size: 18.0,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets3Item.email,
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
                                                                                                                                  Icons.phone_sharp,
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                  size: 18.0,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              Text(
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets3Item.telefone,
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
                                                                                                                                valueOrDefault<String>(
                                                                                                                                  tickets3Item.tipoSolicitacao,
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
                                                                                                                              Expanded(
                                                                                                                                child: Padding(
                                                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      tickets3Item.descricao,
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
                                                                                  ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation6']!);
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
                                                  ].divide(
                                                      const SizedBox(height: 16.0)),
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
