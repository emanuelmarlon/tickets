import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;
  // State field(s) for NomeCompelto widget.
  FocusNode? nomeCompeltoFocusNode;
  TextEditingController? nomeCompeltoTextController;
  String? Function(BuildContext, String?)? nomeCompeltoTextControllerValidator;
  // State field(s) for senhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroTextController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroTextControllerValidator;
  // State field(s) for senhaCadastroConfirmar widget.
  FocusNode? senhaCadastroConfirmarFocusNode;
  TextEditingController? senhaCadastroConfirmarTextController;
  late bool senhaCadastroConfirmarVisibility;
  String? Function(BuildContext, String?)?
      senhaCadastroConfirmarTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Insert Row] action in Button-Login widget.
  UsuariosRow? usuario;

  @override
  void initState(BuildContext context) {
    senhaCadastroVisibility = false;
    senhaCadastroConfirmarVisibility = false;
  }

  @override
  void dispose() {
    emailCadastroFocusNode?.dispose();
    emailCadastroTextController?.dispose();

    nomeCompeltoFocusNode?.dispose();
    nomeCompeltoTextController?.dispose();

    senhaCadastroFocusNode?.dispose();
    senhaCadastroTextController?.dispose();

    senhaCadastroConfirmarFocusNode?.dispose();
    senhaCadastroConfirmarTextController?.dispose();
  }
}
