import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nova_consulta_widget.dart' show NovaConsultaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NovaConsultaModel extends FlutterFlowModel<NovaConsultaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###########');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF marlon)] action in CPF widget.
  ApiCallResponse? pedidoCopy;
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF marlon)] action in Button widget.
  ApiCallResponse? pedido;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();
  }
}
