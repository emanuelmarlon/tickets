// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> retornaNomeDaPagina(BuildContext context) async {
  // Add your function code here!
  final route = ModalRoute.of(context);

  // Verifica se a rota não é nula e retorna o nome dela
  if (route != null) {
    return route.settings.name ?? 'Rota desconhecida';
  } else {
    return 'Rota não encontrada';
  }
}
