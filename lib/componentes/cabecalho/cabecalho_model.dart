import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cabecalho_widget.dart' show CabecalhoWidget;
import 'package:flutter/material.dart';

class CabecalhoModel extends FlutterFlowModel<CabecalhoWidget> {
  ///  Local state fields for this component.

  String? urlImagem;

  ///  State fields for stateful widgets in this component.

  // State field(s) for mrDash widget.
  bool mrDashHovered1 = false;
  // State field(s) for mrDash widget.
  bool mrDashHovered2 = false;
  // State field(s) for mrpages widget.
  bool mrpagesHovered = false;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Image widget.
  List<UsuariosRow>? user2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
