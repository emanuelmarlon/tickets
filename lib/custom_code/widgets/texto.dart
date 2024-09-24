// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:html_editor_enhanced/html_editor.dart';

class Texto extends StatefulWidget {
  const Texto({
    super.key,
    this.width,
    this.height,
    this.darkMode,
    this.spellCheck,
    this.dropdownBackgroundColor,
    this.dropdownButtonColor,
    this.dropdownTextColor,
    this.editorBackgroundColor,
    this.editorTextColor,
    this.hint,
    this.currentHtml, // Adiciona a variável currentHtml
  });

  final double? width;
  final double? height;
  final bool? darkMode;
  final bool? spellCheck;
  final Color? dropdownBackgroundColor;
  final Color? dropdownButtonColor;
  final Color? dropdownTextColor;
  final Color? editorBackgroundColor;
  final Color? editorTextColor;
  final String? hint;
  final String? currentHtml; // Define a propriedade currentHtml

  @override
  State<Texto> createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  late HtmlEditorController controller;

  @override
  void initState() {
    super.initState();
    controller = HtmlEditorController(
      processNewLineAsBr: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: HtmlEditor(
        controller: controller,
        htmlEditorOptions: HtmlEditorOptions(
          hint: widget.hint ?? "Digite seu texto aqui...",
          initialText:
              widget.currentHtml, // Define o texto inicial com currentHtml
          darkMode: widget.darkMode ?? false,
          spellCheck: widget.spellCheck ?? true,
        ),
        callbacks: Callbacks(onChangeContent: (String? htmlContent) {
          FFAppState().HTMLMessage = htmlContent ?? ''; // Atualiza HTMLMessage
        }),
        htmlToolbarOptions: HtmlToolbarOptions(
          textStyle: TextStyle(
            fontSize: 12,
            color: widget.dropdownTextColor ?? Colors.black,
          ),
          dropdownBackgroundColor:
              widget.dropdownBackgroundColor ?? Colors.white,
          buttonColor: widget.dropdownButtonColor ?? Colors.black,
        ),
        otherOptions: OtherOptions(
          height: 1000.0,
        ),
      ),
    );
  }
}
