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

Future<void> colocarFoco(
  BuildContext context,
  String? labelText,
) async {
  // Add your function code here!
  if (labelText != null && labelText.isNotEmpty) {
    // Encontrar o campo de texto com base no texto da label fornecida
    final textField = findTextFieldByLabelText(context, labelText);

    // Verificar se o campo de texto foi encontrado
    if (textField != null) {
      // Solicitar o foco para o campo de texto encontrado
      FocusScope.of(context).requestFocus(textField);
    } else {
      // Caso o campo de texto não seja encontrado, exibir uma mensagem de erro
      print('Campo de texto com o labelText "$labelText" não foi encontrado.');
    }
  } else {
    // Caso o texto da label seja nulo ou vazio, exibir uma mensagem de erro
    print('Texto da label inválido.');
  }
}

// Função para encontrar um campo de texto com base no labelText
FocusNode? findTextFieldByLabelText(BuildContext context, String labelText) {
  FocusNode? foundFocusNode;

  // Função recursiva para percorrer a árvore de widgets
  void searchForTextField(Element element) {
    // Verificar se o widget é um TextField com o labelText correto
    if (element.widget is TextField) {
      final textField = element.widget as TextField;
      if (textField.decoration?.labelText == labelText) {
        foundFocusNode = textField.focusNode;
        return;
      }
    }

    // Verificar se o elemento tem filhos e percorrer recursivamente
    element.visitChildren(searchForTextField);
  }

  // Iniciar a busca recursiva a partir do contexto fornecido
  WidgetsBinding.instance!.renderViewElement!.visitChildren(searchForTextField);

  return foundFocusNode;
}
