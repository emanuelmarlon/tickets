import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_pedido_widget.dart' show DetalhePedidoWidget;
import 'package:flutter/material.dart';

class DetalhePedidoModel extends FlutterFlowModel<DetalhePedidoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar historico de status de um pedido yampy)] action in detalhePedido widget.
  ApiCallResponse? statusYampi;
  // Stores action output result for [Backend Call - API (Listar transacoes)] action in detalhePedido widget.
  ApiCallResponse? transacoesYampi;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
