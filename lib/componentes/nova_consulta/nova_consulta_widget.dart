import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nova_consulta_model.dart';
export 'nova_consulta_model.dart';

class NovaConsultaWidget extends StatefulWidget {
  const NovaConsultaWidget({super.key});

  @override
  State<NovaConsultaWidget> createState() => _NovaConsultaWidgetState();
}

class _NovaConsultaWidgetState extends State<NovaConsultaWidget> {
  late NovaConsultaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovaConsultaModel());

    _model.cpfTextController ??= TextEditingController();
    _model.cpfFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        height: 260.0,
        constraints: const BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      safeSetState(() {
                        _model.cpfTextController?.text =
                            _model.cpfTextController.text;
                        _model.cpfTextController?.selection =
                            TextSelection.collapsed(
                                offset: _model.cpfTextController!.text.length);
                      });
                    },
                    child: Text(
                      'Nova Consulta',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.cpfTextController,
                                    focusNode: _model.cpfFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.cpfTextController',
                                      const Duration(milliseconds: 1),
                                      () => safeSetState(() {}),
                                    ),
                                    onFieldSubmitted: (_) async {
                                      var shouldSetState = false;
                                      if (_model.cpfTextController.text == '') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text('Ticket'),
                                              content: const Text('Digite o CPF.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        await actions.colocarFoco(
                                          context,
                                          'CPF',
                                        );
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      } else {
                                        if (((String var1) {
                                              return RegExp(r'^.{11}$')
                                                  .hasMatch(var1);
                                            }(_model.cpfTextController.text)) ==
                                            false) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Ticket'),
                                                content: const Text(
                                                    'Digite o CPF com 11 caracteres.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          safeSetState(() {
                                            _model.cpfTextController?.clear();
                                          });
                                          await actions.colocarFoco(
                                            context,
                                            'CPF',
                                          );
                                          if (shouldSetState) {
                                            safeSetState(() {});
                                          }
                                          return;
                                        }
                                      }

                                      _model.pedidoCopy =
                                          await PedidosByanaYampiCPFMarlonCall
                                              .call(
                                        q: _model.cpfTextController.text,
                                      );

                                      shouldSetState = true;
                                      if (getJsonField(
                                            PedidosByanaYampiCPFMarlonCall
                                                .resultadoPedidos(
                                              (_model.pedidoCopy?.jsonBody ??
                                                  ''),
                                            )?.first,
                                            r'''$.id''',
                                          ) !=
                                          null) {
                                        FFAppState().pedido =
                                            ((_model.pedidoCopy?.jsonBody ?? '')
                                                        .toList()
                                                        .map<PedidoStruct?>(
                                                            PedidoStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<PedidoStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<PedidoStruct>();
                                        FFAppState().update(() {});

                                        context.goNamed('detlhesClientes');
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text('Ticket'),
                                              content: const Text(
                                                  'CPF inválido ou nada foi encontrado.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        safeSetState(() {
                                          _model.cpfTextController?.clear();
                                        });
                                        await actions.colocarFoco(
                                          context,
                                          'CPF',
                                        );
                                      }

                                      if (shouldSetState) safeSetState(() {});
                                    },
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.characters,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'CPF',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Digite o CPF ',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 0.0, 0.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLength: 11,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    keyboardType: TextInputType.number,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model.cpfTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [_model.cpfMask],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
              Divider(
                height: 2.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.safePop();
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        hoverColor: FlutterFlowTheme.of(context).alternate,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryText,
                        hoverElevation: 3.0,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: (((String var1) {
                                return RegExp(r'^.{11}$').hasMatch(var1);
                              }(_model.cpfTextController.text)) ==
                              false)
                          ? null
                          : () async {
                              var shouldSetState = false;
                              if (_model.cpfTextController.text == '') {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Ticket'),
                                      content: const Text('Digite o CPF.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (shouldSetState) safeSetState(() {});
                                return;
                              }
                              _model.pedido =
                                  await PedidosByanaYampiCPFMarlonCall.call(
                                q: _model.cpfTextController.text,
                              );

                              shouldSetState = true;
                              if (getJsonField(
                                    PedidosByanaYampiCPFMarlonCall
                                        .resultadoPedidos(
                                      (_model.pedido?.jsonBody ?? ''),
                                    )?.first,
                                    r'''$.id''',
                                  ) !=
                                  null) {
                                FFAppState().pedido =
                                    ((_model.pedido?.jsonBody ?? '')
                                                .toList()
                                                .map<PedidoStruct?>(
                                                    PedidoStruct.maybeFromMap)
                                                .toList()
                                            as Iterable<PedidoStruct?>)
                                        .withoutNulls
                                        .toList()
                                        .cast<PedidoStruct>();
                                FFAppState().update(() {});

                                context.goNamed(
                                  'detlhesClientes',
                                  queryParameters: {
                                    'cpf': serializeParam(
                                      _model.cpfTextController.text,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Ticket'),
                                      content: const Text(
                                          'CPF inválido ou nada foi encontrado.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                safeSetState(() {
                                  _model.cpfTextController?.clear();
                                });
                                await actions.colocarFoco(
                                  context,
                                  'CPF',
                                );
                              }

                              if (shouldSetState) safeSetState(() {});
                            },
                      text: 'Consultar',
                      options: FFButtonOptions(
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        disabledColor: FlutterFlowTheme.of(context).accent1,
                        hoverColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        hoverTextColor: FlutterFlowTheme.of(context).primary,
                        hoverElevation: 0.0,
                      ),
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
              ),
            ].divide(const SizedBox(height: 4.0)).addToEnd(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
