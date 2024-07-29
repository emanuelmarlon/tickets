import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/notificacao_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final iconQpowxpae = GlobalKey();

/// notificar atividade concluida
///
/// notifica o usuario criador da atividade que o responsavel concluiu.
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: iconQpowxpae,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).primary,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const NotificacaoWidget(
              titulo: 'Editar nome',
              descricao: 'Você agora pode editar o nome do cliente.',
            ),
          ),
        ],
      ),
    ];
