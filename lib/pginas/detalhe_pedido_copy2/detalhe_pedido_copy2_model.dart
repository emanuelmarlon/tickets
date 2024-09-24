import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_pedido_copy2_widget.dart' show DetalhePedidoCopy2Widget;
import 'package:flutter/material.dart';

class DetalhePedidoCopy2Model
    extends FlutterFlowModel<DetalhePedidoCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar produtos de um pedido yampi)] action in detalhePedidoCopy2 widget.
  ApiCallResponse? produtosYampi;
  // Stores action output result for [Backend Call - API (Listar historico de status de um pedido yampy)] action in detalhePedidoCopy2 widget.
  ApiCallResponse? statusYampi;
  // Stores action output result for [Backend Call - API (Listar nota fiscal de um pedido)] action in detalhePedidoCopy2 widget.
  ApiCallResponse? notaFiscalYampi;
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
