import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/components/menu_widget.dart';
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

  // Model for menu component.
  late MenuModel menuModel;
  // Model for menuHome component.
  late MenuHomeModel menuHomeModel1;
  // Model for cabecalho component.
  late CabecalhoModel cabecalhoModel;
  // Model for menuHome component.
  late MenuHomeModel menuHomeModel2;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    menuHomeModel1 = createModel(context, () => MenuHomeModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
    menuHomeModel2 = createModel(context, () => MenuHomeModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    menuHomeModel1.dispose();
    cabecalhoModel.dispose();
    menuHomeModel2.dispose();
  }
}
