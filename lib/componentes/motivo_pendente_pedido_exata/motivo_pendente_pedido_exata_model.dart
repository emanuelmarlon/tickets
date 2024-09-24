import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'motivo_pendente_pedido_exata_widget.dart'
    show MotivoPendentePedidoExataWidget;
import 'package:flutter/material.dart';

class MotivoPendentePedidoExataModel
    extends FlutterFlowModel<MotivoPendentePedidoExataWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoAtividade widget.
  String? tipoAtividadeValue;
  FormFieldController<String>? tipoAtividadeValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
