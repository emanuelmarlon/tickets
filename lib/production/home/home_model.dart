import '/components/cabecalho_widget.dart';
import '/components/menu_home_drawer_widget.dart';
import '/components/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String? status;

  DateTime? dataInicial;

  DateTime? dataFinal;

  List<String> meses = [
    'jan',
    'fev',
    'mar',
    'abr',
    'maio',
    'jun',
    'jul',
    'ago',
    'set',
    'out',
    'nov',
    'dez'
  ];
  void addToMeses(String item) => meses.add(item);
  void removeFromMeses(String item) => meses.remove(item);
  void removeAtIndexFromMeses(int index) => meses.removeAt(index);
  void insertAtIndexInMeses(int index, String item) =>
      meses.insert(index, item);
  void updateMesesAtIndex(int index, Function(String) updateFn) =>
      meses[index] = updateFn(meses[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuHome component.
  late MenuHomeModel menuHomeModel;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;
  // Model for menuHomeDrawer component.
  late MenuHomeDrawerModel menuHomeDrawerModel;

  @override
  void initState(BuildContext context) {
    menuHomeModel = createModel(context, () => MenuHomeModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
    menuHomeDrawerModel = createModel(context, () => MenuHomeDrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuHomeModel.dispose();
    cabecalhoModel.dispose();
    menuHomeDrawerModel.dispose();
  }
}
