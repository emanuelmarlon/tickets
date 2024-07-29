import '/backend/api_requests/api_calls.dart';
import '/components/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'consulta_cliente_widget.dart' show ConsultaClienteWidget;
import 'package:flutter/material.dart';

class ConsultaClienteModel extends FlutterFlowModel<ConsultaClienteWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuHome component.
  late MenuHomeModel menuHomeModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // Stores action output result for [Backend Call - API (Pedidos Byana Yampi CPF)] action in Button widget.
  ApiCallResponse? consultacpf;

  @override
  void initState(BuildContext context) {
    menuHomeModel = createModel(context, () => MenuHomeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuHomeModel.dispose();
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();
  }
}
