import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_home_widget.dart' show MenuHomeWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MenuHomeModel extends FlutterFlowModel<MenuHomeWidget> {
  ///  Local state fields for this component.

  bool menu = false;

  String nomePagina = 'Home';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (totais geral)] action in menuHome widget.
  ApiCallResponse? apiResult1r6;
  // State field(s) for mrdash widget.
  bool mrdashHovered1 = false;
  // State field(s) for mrdash widget.
  bool mrdashHovered2 = false;
  // State field(s) for mrcriarticket widget.
  bool mrcriarticketHovered1 = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for mrtickets widget.
  bool mrticketsHovered = false;
  // State field(s) for mrlogistica widget.
  bool mrlogisticaHovered1 = false;
  // State field(s) for mrlogistica widget.
  bool mrlogisticaHovered2 = false;
  // State field(s) for mratividades widget.
  bool mratividadesHovered1 = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for mratividades widget.
  bool mratividadesHovered2 = false;
  // State field(s) for mratividades widget.
  bool mratividadesHovered3 = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for mratividades widget.
  bool mratividadesHovered4 = false;
  // State field(s) for mratividades widget.
  bool mratividadesHovered5 = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for mratividades widget.
  bool mratividadesHovered6 = false;
  // State field(s) for mratividades widget.
  bool mratividadesHovered7 = false;
  // State field(s) for mrcriarticket widget.
  bool mrcriarticketHovered2 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
  }
}
