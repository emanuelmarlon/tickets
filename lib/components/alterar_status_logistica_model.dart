import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alterar_status_logistica_widget.dart' show AlterarStatusLogisticaWidget;
import 'package:flutter/material.dart';

class AlterarStatusLogisticaModel
    extends FlutterFlowModel<AlterarStatusLogisticaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoAtividade widget.
  String? tipoAtividadeValue;
  FormFieldController<String>? tipoAtividadeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
