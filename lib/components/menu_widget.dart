import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Material(
      color: Colors.transparent,
      elevation: 50.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Container(
        width: 270.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).customColor1,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/image_1_(Traced).png',
                        width: 180.0,
                        height: 180.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered1 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered1 = false);
                }),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (FFAppState().verMenu == 'cadastros') {
                        FFAppState().verMenu = '';
                        safeSetState(() {});
                      } else {
                        FFAppState().verMenu = 'cadastros';
                        safeSetState(() {});
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().verMenu == 'cadastros'
                            ? FlutterFlowTheme.of(context).secondaryBackground
                            : const Color(0x00000000),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Icon(
                                    Icons.app_registration,
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (FFAppState().verMenu ==
                                            'cadastros') {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else if (_model.mouseRegionHovered1 ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryBackground;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    size: 20.0,
                                  ),
                                ),
                                Text(
                                  'Cadastros',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: valueOrDefault<Color>(
                                          () {
                                            if (FFAppState().verMenu ==
                                                'cadastros') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .success;
                                            } else if (_model
                                                    .mouseRegionHovered1 ==
                                                true) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .success;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            }
                                          }(),
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            if (FFAppState().verMenu != 'cadastros')
                              Icon(
                                Icons.arrow_drop_down,
                                color: valueOrDefault<Color>(
                                  () {
                                    if (FFAppState().verMenu == 'cadastros') {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else if (_model.mouseRegionHovered1 ==
                                        true) {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    }
                                  }(),
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                size: 25.0,
                              ),
                            if (FFAppState().verMenu == 'cadastros')
                              Icon(
                                Icons.arrow_drop_up,
                                color: FlutterFlowTheme.of(context).success,
                                size: 25.0,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (FFAppState().verMenu == 'cadastros')
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionClienteHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionClienteHovered = false);
                        }),
                        child: Container(
                          width: double.infinity,
                          height: 45.0,
                          decoration: const BoxDecoration(),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.solidCopyright,
                                      color: _model.mouseRegionClienteHovered
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      size: _model.mouseRegionClienteHovered
                                          ? 24.0
                                          : 10.0,
                                    ),
                                  ),
                                  Text(
                                    'Clientes',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionProdutosHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionProdutosHovered = false);
                        }),
                        child: Container(
                          width: double.infinity,
                          height: 45.0,
                          decoration: const BoxDecoration(),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.productHunt,
                                      color: _model.mouseRegionProdutosHovered
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      size: _model.mouseRegionProdutosHovered
                                          ? 24.0
                                          : 10.0,
                                    ),
                                  ),
                                  Text(
                                    'Produtos',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionUsuariosHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionUsuariosHovered = false);
                        }),
                        child: Container(
                          width: double.infinity,
                          height: 45.0,
                          decoration: const BoxDecoration(),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.userAlt,
                                      color: _model.mouseRegionUsuariosHovered
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      size: _model.mouseRegionUsuariosHovered
                                          ? 24.0
                                          : 10.0,
                                    ),
                                  ),
                                  Text(
                                    'Usuários',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
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
                ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered2 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered2 = false);
                }),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (FFAppState().verMenu == 'conferencia') {
                        FFAppState().verMenu = '';
                        safeSetState(() {});
                      } else {
                        FFAppState().verMenu = 'conferencia';
                        safeSetState(() {});
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().verMenu == 'conferencia'
                            ? FlutterFlowTheme.of(context).secondaryBackground
                            : const Color(0x00000000),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.confluence,
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (FFAppState().verMenu ==
                                            'conferencia') {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else if (_model
                                            .mouseRegionHovered2) {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryBackground;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    size: 20.0,
                                  ),
                                ),
                                Text(
                                  'Conferência',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: valueOrDefault<Color>(
                                          () {
                                            if (FFAppState().verMenu ==
                                                'conferencia') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .success;
                                            } else if (_model
                                                .mouseRegionHovered2) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .success;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            }
                                          }(),
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            if (FFAppState().verMenu != 'conferencia')
                              Icon(
                                Icons.arrow_drop_down,
                                color: valueOrDefault<Color>(
                                  () {
                                    if (FFAppState().verMenu == 'conferencia') {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else if (_model.mouseRegionHovered2) {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    }
                                  }(),
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                size: 25.0,
                              ),
                            if (FFAppState().verMenu == 'conferencia')
                              Icon(
                                Icons.arrow_drop_up_sharp,
                                color: FlutterFlowTheme.of(context).success,
                                size: 25.0,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (FFAppState().verMenu == 'conferencia')
                Container(
                  width: double.infinity,
                  height: 280.0,
                  decoration: const BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionBipagemHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionBipagemHovered = false);
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.barcode,
                                        color: _model.mouseRegionBipagemHovered
                                            ? FlutterFlowTheme.of(context)
                                                .warning
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        size: _model.mouseRegionBipagemHovered
                                            ? 24.0
                                            : 10.0,
                                      ),
                                    ),
                                    Text(
                                      'Bipagem',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionLiberarPedidosHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() => _model
                                .mouseRegionLiberarPedidosHovered = false);
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Icon(
                                        Icons.new_releases,
                                        color: _model
                                                .mouseRegionLiberarPedidosHovered
                                            ? FlutterFlowTheme.of(context)
                                                .warning
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        size: _model
                                                .mouseRegionLiberarPedidosHovered
                                            ? 24.0
                                            : 10.0,
                                      ),
                                    ),
                                    Text(
                                      'Liberar pedidos',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(() => _model
                                .mouseRegionImprimiretiquetasHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() => _model
                                .mouseRegionImprimiretiquetasHovered = false);
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Icon(
                                        Icons.local_print_shop_rounded,
                                        color: _model
                                                .mouseRegionImprimiretiquetasHovered
                                            ? FlutterFlowTheme.of(context)
                                                .warning
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        size: _model
                                                .mouseRegionImprimiretiquetasHovered
                                            ? 24.0
                                            : 10.0,
                                      ),
                                    ),
                                    Text(
                                      'Imprimir etiquetas',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionRomaneioHovered1 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionRomaneioHovered1 = false);
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Icon(
                                        Icons.list_alt,
                                        color:
                                            _model.mouseRegionRomaneioHovered1
                                                ? FlutterFlowTheme.of(context)
                                                    .warning
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        size:
                                            _model.mouseRegionRomaneioHovered1
                                                ? 24.0
                                                : 10.0,
                                      ),
                                    ),
                                    Text(
                                      'Romaneio',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionRomaneioHovered2 = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionRomaneioHovered2 = false);
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Icon(
                                        Icons.list_alt,
                                        color:
                                            _model.mouseRegionRomaneioHovered2
                                                ? FlutterFlowTheme.of(context)
                                                    .warning
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        size:
                                            _model.mouseRegionRomaneioHovered2
                                                ? 24.0
                                                : 10.0,
                                      ),
                                    ),
                                    Text(
                                      'Remessa',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionProducaoHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionProducaoHovered = false);
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.luggageCart,
                                        color:
                                            _model.mouseRegionProducaoHovered
                                                ? FlutterFlowTheme.of(context)
                                                    .warning
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                        size: _model.mouseRegionProducaoHovered
                                            ? 24.0
                                            : 10.0,
                                      ),
                                    ),
                                    Text(
                                      'Produção',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
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
                  ),
                ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered3 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered3 = false);
                }),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (FFAppState().verMenu == 'movimento') {
                        FFAppState().verMenu = '';
                        safeSetState(() {});
                      } else {
                        FFAppState().verMenu = 'movimento';
                        safeSetState(() {});
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FFAppState().verMenu == 'movimento'
                            ? FlutterFlowTheme.of(context).secondaryBackground
                            : const Color(0x00000000),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Icon(
                                    Icons.movie_creation,
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (FFAppState().verMenu ==
                                            'movimento') {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else if (_model
                                            .mouseRegionHovered3) {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryBackground;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    size: 20.0,
                                  ),
                                ),
                                Text(
                                  'Movimento',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: valueOrDefault<Color>(
                                          () {
                                            if (FFAppState().verMenu ==
                                                'movimento') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .success;
                                            } else if (_model
                                                .mouseRegionHovered3) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .success;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            }
                                          }(),
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            if (FFAppState().verMenu != 'movimento')
                              Icon(
                                Icons.arrow_drop_down,
                                color: valueOrDefault<Color>(
                                  () {
                                    if (FFAppState().verMenu == 'movimento') {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else if (_model.mouseRegionHovered3) {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .secondaryBackground;
                                    }
                                  }(),
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                size: 25.0,
                              ),
                            if (FFAppState().verMenu == 'movimento')
                              Icon(
                                Icons.arrow_drop_up_sharp,
                                color: FlutterFlowTheme.of(context).success,
                                size: 25.0,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mrEstoqueHovered = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mrEstoqueHovered = false);
                }),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: const BoxDecoration(),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.box,
                                    color: _model.mrEstoqueHovered
                                        ? FlutterFlowTheme.of(context).warning
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    size:
                                        _model.mrEstoqueHovered ? 24.0 : 10.0,
                                  ),
                                ),
                                Text(
                                  'Estoque',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mrPedidosHovered = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mrPedidosHovered = false);
                }),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: const BoxDecoration(),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Icon(
                                    Icons.point_of_sale,
                                    color: _model.mrPedidosHovered
                                        ? FlutterFlowTheme.of(context).warning
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    size:
                                        _model.mrPedidosHovered ? 24.0 : 10.0,
                                  ),
                                ),
                                Text(
                                  'Pedidos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {},
                                  child: SizedBox(
                                    width: 80.0,
                                    child: Stack(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.9, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.wb_sunny_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              Icons.mode_night_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Container(
                                            width: 36.0,
                                            height: 36.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x430B0D0F),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'containerOnActionTriggerAnimation']!,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                opaque: false,
                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                onEnter: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered4 = true);
                                }),
                                onExit: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered4 = false);
                                }),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Function() navigate = () {};
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Conferência'),
                                                  content: const Text(
                                                      'Deseja sair do sistema?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancelar'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Sair'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      navigate = () => context.goNamedAuth(
                                          'login', context.mounted);
                                    }

                                    navigate();
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Icon(
                                          Icons.logout_outlined,
                                          color:
                                              _model.mouseRegionHovered4 == true
                                                  ? FlutterFlowTheme.of(context)
                                                      .success
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                          size: 20.0,
                                        ),
                                      ),
                                      Text(
                                        'Sair',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  _model.mouseRegionHovered4 ==
                                                          true
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .success
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
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
        ),
      ),
    );
  }
}
