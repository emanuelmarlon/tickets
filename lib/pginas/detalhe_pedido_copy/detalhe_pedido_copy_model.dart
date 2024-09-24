import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_pedido_copy_widget.dart' show DetalhePedidoCopyWidget;
import 'package:flutter/material.dart';

class DetalhePedidoCopyModel extends FlutterFlowModel<DetalhePedidoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar produtos de um pedido yampi)] action in detalhePedidoCopy widget.
  ApiCallResponse? produtosYampi;
  // Stores action output result for [Backend Call - API (Listar historico de status de um pedido yampy)] action in detalhePedidoCopy widget.
  ApiCallResponse? statusYampi;
  // Stores action output result for [Backend Call - API (Listar nota fiscal de um pedido)] action in detalhePedidoCopy widget.
  ApiCallResponse? notaFiscalYampi;
  // Stores action output result for [Backend Call - API (Listar rastreamento)] action in detalhePedidoCopy widget.
  ApiCallResponse? rastreamentoYampi;
  // Stores action output result for [Backend Call - API (Listar emails)] action in detalhePedidoCopy widget.
  ApiCallResponse? emailYampi;
  // Stores action output result for [Backend Call - API (Listar transacoes)] action in detalhePedidoCopy widget.
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
