import '/backend/supabase/supabase.dart';
import '/componentes/cabecalho/cabecalho_widget.dart';
import '/componentes/menu_home/menu_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import 'pedidos_copy_widget.dart' show PedidosCopyWidget;
import 'package:flutter/material.dart';

class PedidosCopyModel extends FlutterFlowModel<PedidosCopyWidget> {
  ///  Local state fields for this page.

  bool ver = true;

  int? id;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  Completer<List<PedidosExataRow>>? requestCompleter;
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
    instantTimer?.cancel();
    menuHomeModel.dispose();
    cabecalhoModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
