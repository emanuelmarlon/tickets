import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alterar_atividade_widget.dart' show AlterarAtividadeWidget;
import 'package:flutter/material.dart';

class AlterarAtividadeModel extends FlutterFlowModel<AlterarAtividadeWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoAtividade widget.
  String? tipoAtividadeValue;
  FormFieldController<String>? tipoAtividadeValueController;
  // State field(s) for Responsvel widget.
  int? responsvelValue;
  FormFieldController<int>? responsvelValueController;
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
