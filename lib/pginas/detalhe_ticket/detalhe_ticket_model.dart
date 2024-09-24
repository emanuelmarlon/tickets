import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'detalhe_ticket_widget.dart' show DetalheTicketWidget;
import 'package:flutter/material.dart';

class DetalheTicketModel extends FlutterFlowModel<DetalheTicketWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  int? idTicket;

  int? idLogistica;

  ///  State fields for stateful widgets in this page.

  // Model for menuHome component.
  late MenuHomeModel menuHomeModel;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<SuporteTRow>? ticketid2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<SuporteTRow>? ticketid;
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF marlon)] action in IconButton widget.
  ApiCallResponse? pedido1;
  Completer<List<ComentariosTicketsRow>>? requestCompleter2;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UsuariosRow>? usuarioCopy;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UsuariosRow>? usuario;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UsuariosRow>? usuarioCopy2;
  Completer<List<ComentariosTicketsRow>>? requestCompleter1;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<UsuariosRow>? usuario1;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    menuHomeModel = createModel(context, () => MenuHomeModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    menuHomeModel.dispose();
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    cabecalhoModel.dispose();
  }

  /// Additional helper methods.
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
}
