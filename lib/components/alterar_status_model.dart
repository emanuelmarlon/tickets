import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alterar_status_widget.dart' show AlterarStatusWidget;
import 'package:flutter/material.dart';

class AlterarStatusModel extends FlutterFlowModel<AlterarStatusWidget> {
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
