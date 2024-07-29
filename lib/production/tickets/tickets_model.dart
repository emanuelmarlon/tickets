import '/components/cabecalho_widget.dart';
import '/components/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tickets_widget.dart' show TicketsWidget;
import 'package:flutter/material.dart';

class TicketsModel extends FlutterFlowModel<TicketsWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  int? id;

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
