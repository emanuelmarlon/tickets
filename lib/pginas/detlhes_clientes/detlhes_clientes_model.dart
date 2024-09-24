import '/backend/api_requests/api_calls.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detlhes_clientes_widget.dart' show DetlhesClientesWidget;
import 'package:flutter/material.dart';

class DetlhesClientesModel extends FlutterFlowModel<DetlhesClientesWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  ///  State fields for stateful widgets in this page.

  // Model for menuHome component.
  late MenuHomeModel menuHomeModel;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF)] action in Button widget.
  ApiCallResponse? consultaPedido;
  // Stores action output result for [Backend Call - API (Estorno Appmax)] action in Button widget.
  ApiCallResponse? apiResulthml;
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
}
