import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cabecalho_widget.dart';
import '/components/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'clientes_widget.dart' show ClientesWidget;
import 'package:flutter/material.dart';

class ClientesModel extends FlutterFlowModel<ClientesWidget> {
  ///  Local state fields for this page.

  String busca = '';

  int? linhas = 50;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuHome component.
  late MenuHomeModel menuHomeModel;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF marlon)] action in Icon widget.
  ApiCallResponse? pedido;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<BuscaClienteStruct>();
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF marlon)] action in Icon widget.
  ApiCallResponse? pedido1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    menuHomeModel = createModel(context, () => MenuHomeModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuHomeModel.dispose();
    cabecalhoModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
