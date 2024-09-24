import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_comentario_widget.dart' show AlterarComentarioWidget;
import 'package:flutter/material.dart';

class AlterarComentarioModel extends FlutterFlowModel<AlterarComentarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminiResponse;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
