import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'check_notificacao_model.dart';
export 'check_notificacao_model.dart';

class CheckNotificacaoWidget extends StatefulWidget {
  const CheckNotificacaoWidget({
    super.key,
    this.parameter1,
    required this.id,
  });

  final bool? parameter1;
  final int? id;

  @override
  State<CheckNotificacaoWidget> createState() => _CheckNotificacaoWidgetState();
}

class _CheckNotificacaoWidgetState extends State<CheckNotificacaoWidget> {
  late CheckNotificacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckNotificacaoModel());

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
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          safeSetState(() => _model.switchValue = newValue);
          if (newValue) {
            await NotificacoesTable().update(
              data: {
                'visto': true,
              },
              matchingRows: (rows) => rows.eq(
                'id',
                widget.id,
              ),
            );
          } else {
            await NotificacoesTable().update(
              data: {
                'visto': false,
              },
              matchingRows: (rows) => rows.eq(
                'id',
                widget.id,
              ),
            );
          }
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).secondary,
        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
      ),
    );
  }
}
