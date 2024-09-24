import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'trasportadorawidget_model.dart';
export 'trasportadorawidget_model.dart';

class TrasportadorawidgetWidget extends StatefulWidget {
  const TrasportadorawidgetWidget({
    super.key,
    this.parameter1,
    required this.id,
  });

  final bool? parameter1;
  final int? id;

  @override
  State<TrasportadorawidgetWidget> createState() =>
      _TrasportadorawidgetWidgetState();
}

class _TrasportadorawidgetWidgetState extends State<TrasportadorawidgetWidget> {
  late TrasportadorawidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrasportadorawidgetModel());

    _model.switchValue = widget.parameter1!;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        safeSetState(() => _model.switchValue = newValue);
        if (newValue) {
          await UsuariosTable().update(
            data: {
              'transportadora': true,
            },
            matchingRows: (rows) => rows.eq(
              'id',
              widget.id,
            ),
          );
        } else {
          await UsuariosTable().update(
            data: {
              'transportadora': false,
            },
            matchingRows: (rows) => rows.eq(
              'id',
              widget.id,
            ),
          );
        }
      },
      activeColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: const Color(0xFF2FC2D6),
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
