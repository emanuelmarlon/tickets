import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/informacoes/informacoes_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'criar_ticket_logistica_model.dart';
export 'criar_ticket_logistica_model.dart';

class CriarTicketLogisticaWidget extends StatefulWidget {
  const CriarTicketLogisticaWidget({super.key});

  @override
  State<CriarTicketLogisticaWidget> createState() =>
      _CriarTicketLogisticaWidgetState();
}

class _CriarTicketLogisticaWidgetState
    extends State<CriarTicketLogisticaWidget> {
  late CriarTicketLogisticaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriarTicketLogisticaModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.informacaoTextController ??= TextEditingController();
    _model.informacaoFocusNode ??= FocusNode();

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 763.0,
        height: FFAppState().tamanho,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Regsitrar Ticket',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.close_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: const Color(0x70606A85),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 8.0, 16.0, 8.0),
                                child: TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController1',
                                    const Duration(milliseconds: 1),
                                    () => safeSetState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Informe o Rastreio',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  maxLength: 15,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  keyboardType: TextInputType.number,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                  inputFormatters: [_model.textFieldMask],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: (((String var1) {
                                        return RegExp(r'^.{15}$')
                                            .hasMatch(var1);
                                      }(_model.textController1.text)) ==
                                      false)
                                  ? null
                                  : () async {
                                      var shouldSetState = false;
                                      if (_model.textController1.text == '') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text('Byana CRM'),
                                              content: const Text(
                                                  'Informe o código de rastreio'),
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
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      }
                                      _model.ip = await TrackingCall.call(
                                        id: _model.textController1.text,
                                      );

                                      shouldSetState = true;
                                      if (TrackingCall.rastreio(
                                                (_model.ip?.jsonBody ?? ''),
                                              ) !=
                                              null &&
                                          TrackingCall.rastreio(
                                                (_model.ip?.jsonBody ?? ''),
                                              ) !=
                                              '') {
                                        FFAppState()
                                            .ip = ((_model.ip?.jsonBody ?? '')
                                                    .toList()
                                                    .map<IpStruct?>(
                                                        IpStruct.maybeFromMap)
                                                    .toList()
                                                as Iterable<IpStruct?>)
                                            .withoutNulls
                                            .toList()
                                            .cast<IpStruct>();
                                        safeSetState(() {});
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: const InformacoesWidget(),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text('Byana CRM'),
                                              content: const Text(
                                                  'Código não encontrado.'),
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
                                      }

                                      if (shouldSetState) safeSetState(() {});
                                    },
                              text: 'Buscar',
                              options: FFButtonOptions(
                                width: 115.0,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF6F61EF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().descreva == true)
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 12.0),
                          child: Text(
                            'Descrava o Ticket',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    if (FFAppState().descreva == true)
                      FlutterFlowDropDown<String>(
                        controller: _model.motivoValueController ??=
                            FormFieldController<String>(null),
                        options: const [
                          'Agilização',
                          'Devolução',
                          'Acareação',
                          'Informação',
                          'Arbitragem',
                          'Rastreio Congelado',
                          'Sem Rastreio',
                          'Interceptado'
                        ],
                        onChanged: (val) =>
                            safeSetState(() => _model.motivoValue = val),
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Selecione o Motivo',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    if (FFAppState().descreva == true)
                      TextFormField(
                        controller: _model.informacaoTextController,
                        focusNode: _model.informacaoFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'descrava o ocorrido',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 12.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                        maxLines: 16,
                        minLines: 6,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        validator: _model.informacaoTextControllerValidator
                            .asValidator(context),
                      ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
              if (_model.descreva == true)
                Divider(
                  height: 2.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              if (FFAppState().descreva == true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancelar',
                        options: FFButtonOptions(
                          width: 140.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                        onPressed: () async {
                          _model.user = await UsuariosTable().queryRows(
                            queryFn: (q) => q.eq(
                              'uid',
                              currentUserUid,
                            ),
                          );
                          _model.ticket = await SuporteLogisticaTable().insert({
                            'solicitante': valueOrDefault<int>(
                              _model.user?.first.id,
                              0,
                            ),
                            'nfe_number': valueOrDefault<String>(
                              FFAppState().ip.first.invoiceNumber,
                              '0',
                            ),
                            'nfe_chave': valueOrDefault<String>(
                              FFAppState().ip.first.invoiceKey,
                              '0',
                            ),
                            'rastreio': valueOrDefault<String>(
                              FFAppState().ip.first.trackingCode,
                              '0',
                            ),
                            'destinarario': '${valueOrDefault<String>(
                              FFAppState().ip.first.firstName,
                              '0',
                            )} ${valueOrDefault<String>(
                              FFAppState().ip.last.lastName,
                              '0',
                            )}',
                            'email': valueOrDefault<String>(
                              FFAppState().ip.first.email,
                              '0',
                            ),
                            'telefone': valueOrDefault<String>(
                              FFAppState().ip.first.phone,
                              '0',
                            ),
                            'cidade': valueOrDefault<String>(
                              FFAppState().ip.first.cidade,
                              '0',
                            ),
                            'uf': valueOrDefault<String>(
                              FFAppState().ip.first.state,
                              '0',
                            ),
                            'descricao': valueOrDefault<String>(
                              _model.informacaoTextController.text,
                              'Não informado',
                            ),
                            'status': 'Aberto',
                            'motivo': _model.motivoValue,
                            'cpf': valueOrDefault<String>(
                              FFAppState().ip.first.cpf,
                              '0',
                            ),
                            'tracking_url': valueOrDefault<String>(
                              FFAppState().ip.first.trackingUrl,
                              '0',
                            ),
                            'ultima_atualizacao':
                                supaSerialize<DateTime>(getCurrentTimestamp),
                            'datafaturamento': supaSerialize<DateTime>(
                                functions.formatDate(valueOrDefault<String>(
                              FFAppState().ip.first.invoiceDate,
                              '0',
                            ))),
                          });
                          _model.mensagem = await DisparoDeMensagemCall.call(
                            id: valueOrDefault<int>(
                              _model.ticket?.id,
                              0,
                            ),
                            rastreio: valueOrDefault<String>(
                              _model.ticket?.rastreio,
                              '0',
                            ),
                            nota: valueOrDefault<String>(
                              _model.ticket?.nfeNumber,
                              '0',
                            ),
                            chave: valueOrDefault<String>(
                              _model.ticket?.nfeChave,
                              'Não informado',
                            ),
                            motivo: valueOrDefault<String>(
                              _model.ticket?.motivo,
                              'Não informado',
                            ),
                            descricao: valueOrDefault<String>(
                              _model.ticket?.descricao,
                              'Não informado',
                            ),
                          );

                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Ticket criado com sucesso.',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                ),
                              ),
                              duration: const Duration(milliseconds: 2000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );

                          safeSetState(() {});
                        },
                        text: 'Criar Ticket',
                        options: FFButtonOptions(
                          width: 140.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                          hoverColor: FlutterFlowTheme.of(context).accent1,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
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
