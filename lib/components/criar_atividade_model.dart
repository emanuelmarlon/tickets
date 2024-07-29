import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criar_atividade_widget.dart' show CriarAtividadeWidget;
import 'package:flutter/material.dart';

class CriarAtividadeModel extends FlutterFlowModel<CriarAtividadeWidget> {
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
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? usuario;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AtividadesRow? inserir;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
