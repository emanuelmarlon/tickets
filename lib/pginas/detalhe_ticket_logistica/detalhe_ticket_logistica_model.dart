import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_logistica/menu_logistica_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'detalhe_ticket_logistica_widget.dart' show DetalheTicketLogisticaWidget;
import 'package:flutter/material.dart';

class DetalheTicketLogisticaModel
    extends FlutterFlowModel<DetalheTicketLogisticaWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  String? texto;

  ///  State fields for stateful widgets in this page.

  // Model for menuLogistica component.
  late MenuLogisticaModel menuLogisticaModel;
  Completer<List<ComentariosTicketsLogisticaRow>>? requestCompleter1;
  Completer<List<ComentariosTicketsLogisticaRow>>? requestCompleter2;
  // Stores action output result for [Backend Call - API (Disparo de Mensagem)] action in Button widget.
  ApiCallResponse? apiResult2s6;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UsuariosRow>? usuario;
  // Stores action output result for [Backend Call - Query Rows] action in Icon widget.
  List<UsuariosRow>? usuario2;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UsuariosRow>? usuario1;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    menuLogisticaModel = createModel(context, () => MenuLogisticaModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    menuLogisticaModel.dispose();
    cabecalhoModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
