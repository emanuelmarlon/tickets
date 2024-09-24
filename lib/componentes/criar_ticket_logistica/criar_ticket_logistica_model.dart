import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criar_ticket_logistica_widget.dart' show CriarTicketLogisticaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriarTicketLogisticaModel
    extends FlutterFlowModel<CriarTicketLogisticaWidget> {
  ///  Local state fields for this component.

  double? tamanho = 190.0;

  bool descreva = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  final textFieldMask = MaskTextInputFormatter(mask: '###############');
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (Tracking)] action in Button widget.
  ApiCallResponse? ip;
  // State field(s) for motivo widget.
  String? motivoValue;
  FormFieldController<String>? motivoValueController;
  // State field(s) for Informacao widget.
  FocusNode? informacaoFocusNode;
  TextEditingController? informacaoTextController;
  String? Function(BuildContext, String?)? informacaoTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? user;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  SuporteLogisticaRow? ticket;
  // Stores action output result for [Backend Call - API (Disparo de Mensagem)] action in Button widget.
  ApiCallResponse? mensagem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    informacaoFocusNode?.dispose();
    informacaoTextController?.dispose();
  }
}
