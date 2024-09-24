import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alterar_status_pedido_mercos1_widget.dart'
    show AlterarStatusPedidoMercos1Widget;
import 'package:flutter/material.dart';

class AlterarStatusPedidoMercos1Model
    extends FlutterFlowModel<AlterarStatusPedidoMercos1Widget> {
  ///  Local state fields for this component.

  DateTime? data;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoAtividade widget.
  String? tipoAtividadeValue;
  FormFieldController<String>? tipoAtividadeValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
