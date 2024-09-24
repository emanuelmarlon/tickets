import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vincular_ticket_pedido_widget.dart' show VincularTicketPedidoWidget;
import 'package:flutter/material.dart';

class VincularTicketPedidoModel
    extends FlutterFlowModel<VincularTicketPedidoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<SuporteTRow>? ticketid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
