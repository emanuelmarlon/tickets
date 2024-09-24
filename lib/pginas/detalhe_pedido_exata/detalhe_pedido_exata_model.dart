import '/backend/supabase/supabase.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_pedido_exata_widget.dart' show DetalhePedidoExataWidget;
import 'package:flutter/material.dart';

class DetalhePedidoExataModel
    extends FlutterFlowModel<DetalhePedidoExataWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  int? idTicket;

  int? idLogistica;

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  // Model for menuHome component.
  late MenuHomeModel menuHomeModel;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<PedidosExataRow>? apiResulteq8;
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
