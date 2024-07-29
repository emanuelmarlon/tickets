import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_ticket1_widget.dart' show DetalheTicket1Widget;
import 'package:flutter/material.dart';

class DetalheTicket1Model extends FlutterFlowModel<DetalheTicket1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in DetalheTicket1 widget.
  List<UsuariosRow>? user;
  // Stores action output result for [Backend Call - API (Pedido Yampi)] action in DetalheTicket1 widget.
  ApiCallResponse? orderYampi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
