import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pedido = prefs
              .getStringList('ff_pedido')
              ?.map((x) {
                try {
                  return PedidoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedido;
    });
    _safeInit(() {
      _ticket = prefs
              .getStringList('ff_ticket')
              ?.map((x) {
                try {
                  return TicketStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ticket;
    });
    _safeInit(() {
      _totaisGeral = prefs
              .getStringList('ff_totaisGeral')
              ?.map((x) {
                try {
                  return TotaisGeralStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _totaisGeral;
    });
    _safeInit(() {
      _transportadora = prefs.getBool('ff_transportadora') ?? _transportadora;
    });
    _safeInit(() {
      _idUsuario = prefs.getInt('ff_idUsuario') ?? _idUsuario;
    });
    _safeInit(() {
      _imagemUsuario = prefs.getString('ff_imagemUsuario') ?? _imagemUsuario;
    });
    _safeInit(() {
      _menu = prefs.getBool('ff_menu') ?? _menu;
    });
    _safeInit(() {
      _drawerTamanho = prefs.getDouble('ff_drawerTamanho') ?? _drawerTamanho;
    });
    _safeInit(() {
      _adm = prefs.getBool('ff_adm') ?? _adm;
    });
    _safeInit(() {
      _textFormHtmlEditor =
          prefs.getString('ff_textFormHtmlEditor') ?? _textFormHtmlEditor;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<PedidoStruct> _pedido = [];
  List<PedidoStruct> get pedido => _pedido;
  set pedido(List<PedidoStruct> value) {
    _pedido = value;
    prefs.setStringList('ff_pedido', value.map((x) => x.serialize()).toList());
  }

  void addToPedido(PedidoStruct value) {
    pedido.add(value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeFromPedido(PedidoStruct value) {
    pedido.remove(value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedido(int index) {
    pedido.removeAt(index);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void updatePedidoAtIndex(
    int index,
    PedidoStruct Function(PedidoStruct) updateFn,
  ) {
    pedido[index] = updateFn(_pedido[index]);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedido(int index, PedidoStruct value) {
    pedido.insert(index, value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  List<TicketStruct> _ticket = [];
  List<TicketStruct> get ticket => _ticket;
  set ticket(List<TicketStruct> value) {
    _ticket = value;
    prefs.setStringList('ff_ticket', value.map((x) => x.serialize()).toList());
  }

  void addToTicket(TicketStruct value) {
    ticket.add(value);
    prefs.setStringList(
        'ff_ticket', _ticket.map((x) => x.serialize()).toList());
  }

  void removeFromTicket(TicketStruct value) {
    ticket.remove(value);
    prefs.setStringList(
        'ff_ticket', _ticket.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTicket(int index) {
    ticket.removeAt(index);
    prefs.setStringList(
        'ff_ticket', _ticket.map((x) => x.serialize()).toList());
  }

  void updateTicketAtIndex(
    int index,
    TicketStruct Function(TicketStruct) updateFn,
  ) {
    ticket[index] = updateFn(_ticket[index]);
    prefs.setStringList(
        'ff_ticket', _ticket.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTicket(int index, TicketStruct value) {
    ticket.insert(index, value);
    prefs.setStringList(
        'ff_ticket', _ticket.map((x) => x.serialize()).toList());
  }

  List<IpStruct> _ip = [];
  List<IpStruct> get ip => _ip;
  set ip(List<IpStruct> value) {
    _ip = value;
  }

  void addToIp(IpStruct value) {
    ip.add(value);
  }

  void removeFromIp(IpStruct value) {
    ip.remove(value);
  }

  void removeAtIndexFromIp(int index) {
    ip.removeAt(index);
  }

  void updateIpAtIndex(
    int index,
    IpStruct Function(IpStruct) updateFn,
  ) {
    ip[index] = updateFn(_ip[index]);
  }

  void insertAtIndexInIp(int index, IpStruct value) {
    ip.insert(index, value);
  }

  double _tamanho = 190.0;
  double get tamanho => _tamanho;
  set tamanho(double value) {
    _tamanho = value;
  }

  bool _descreva = false;
  bool get descreva => _descreva;
  set descreva(bool value) {
    _descreva = value;
  }

  List<TotaisGeralStruct> _totaisGeral = [
    TotaisGeralStruct.fromSerializableMap(jsonDecode(
        '{\"total_suportet_aberto\":\"0\",\"total_suportet_em_andamento\":\"0\",\"total_suportet_pendente\":\"0\",\"total_suportet_concluido\":\"0\",\"total_suportelogistica_aberto\":\"0\",\"total_suportelogistica_em_andamento\":\"0\",\"total_suportelogistica_pendente\":\"0\",\"total_suportelogistica_concluido\":\"0\",\"total_atividades_aberto\":\"0\",\"total_atividades_em_andamento\":\"0\",\"total_atividades_pendente\":\"0\",\"total_atividades_concluido\":\"0\",\"total_suportet_aberto_cancelamento_true\":\"0\",\"total_atividades_aberto_userid\":\"0\"}'))
  ];
  List<TotaisGeralStruct> get totaisGeral => _totaisGeral;
  set totaisGeral(List<TotaisGeralStruct> value) {
    _totaisGeral = value;
    prefs.setStringList(
        'ff_totaisGeral', value.map((x) => x.serialize()).toList());
  }

  void addToTotaisGeral(TotaisGeralStruct value) {
    totaisGeral.add(value);
    prefs.setStringList(
        'ff_totaisGeral', _totaisGeral.map((x) => x.serialize()).toList());
  }

  void removeFromTotaisGeral(TotaisGeralStruct value) {
    totaisGeral.remove(value);
    prefs.setStringList(
        'ff_totaisGeral', _totaisGeral.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTotaisGeral(int index) {
    totaisGeral.removeAt(index);
    prefs.setStringList(
        'ff_totaisGeral', _totaisGeral.map((x) => x.serialize()).toList());
  }

  void updateTotaisGeralAtIndex(
    int index,
    TotaisGeralStruct Function(TotaisGeralStruct) updateFn,
  ) {
    totaisGeral[index] = updateFn(_totaisGeral[index]);
    prefs.setStringList(
        'ff_totaisGeral', _totaisGeral.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTotaisGeral(int index, TotaisGeralStruct value) {
    totaisGeral.insert(index, value);
    prefs.setStringList(
        'ff_totaisGeral', _totaisGeral.map((x) => x.serialize()).toList());
  }

  bool _transportadora = false;
  bool get transportadora => _transportadora;
  set transportadora(bool value) {
    _transportadora = value;
    prefs.setBool('ff_transportadora', value);
  }

  int _idUsuario = 0;
  int get idUsuario => _idUsuario;
  set idUsuario(int value) {
    _idUsuario = value;
    prefs.setInt('ff_idUsuario', value);
  }

  List<BuscaClienteStruct> _buscaCliente = [];
  List<BuscaClienteStruct> get buscaCliente => _buscaCliente;
  set buscaCliente(List<BuscaClienteStruct> value) {
    _buscaCliente = value;
  }

  void addToBuscaCliente(BuscaClienteStruct value) {
    buscaCliente.add(value);
  }

  void removeFromBuscaCliente(BuscaClienteStruct value) {
    buscaCliente.remove(value);
  }

  void removeAtIndexFromBuscaCliente(int index) {
    buscaCliente.removeAt(index);
  }

  void updateBuscaClienteAtIndex(
    int index,
    BuscaClienteStruct Function(BuscaClienteStruct) updateFn,
  ) {
    buscaCliente[index] = updateFn(_buscaCliente[index]);
  }

  void insertAtIndexInBuscaCliente(int index, BuscaClienteStruct value) {
    buscaCliente.insert(index, value);
  }

  bool _numeroPedidoEstorno = false;
  bool get numeroPedidoEstorno => _numeroPedidoEstorno;
  set numeroPedidoEstorno(bool value) {
    _numeroPedidoEstorno = value;
  }

  String _imagemUsuario =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ticketsagent-pbb7oh/assets/9kfcr7heuves/149071.png';
  String get imagemUsuario => _imagemUsuario;
  set imagemUsuario(String value) {
    _imagemUsuario = value;
    prefs.setString('ff_imagemUsuario', value);
  }

  bool _menu = false;
  bool get menu => _menu;
  set menu(bool value) {
    _menu = value;
    prefs.setBool('ff_menu', value);
  }

  double _drawerTamanho = 270.0;
  double get drawerTamanho => _drawerTamanho;
  set drawerTamanho(double value) {
    _drawerTamanho = value;
    prefs.setDouble('ff_drawerTamanho', value);
  }

  bool _adm = false;
  bool get adm => _adm;
  set adm(bool value) {
    _adm = value;
    prefs.setBool('ff_adm', value);
  }

  String _HTMLMessage = 'Digite seu texto aqui...';
  String get HTMLMessage => _HTMLMessage;
  set HTMLMessage(String value) {
    _HTMLMessage = value;
  }

  String _textFormHtmlEditor = '';
  String get textFormHtmlEditor => _textFormHtmlEditor;
  set textFormHtmlEditor(String value) {
    _textFormHtmlEditor = value;
    prefs.setString('ff_textFormHtmlEditor', value);
  }

  String _verMenu = '';
  String get verMenu => _verMenu;
  set verMenu(String value) {
    _verMenu = value;
  }

  final _queryUsuariosManager = FutureRequestManager<List<UsuariosRow>>();
  Future<List<UsuariosRow>> queryUsuarios({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsuariosRow>> Function() requestFn,
  }) =>
      _queryUsuariosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryUsuariosCache() => _queryUsuariosManager.clear();
  void clearQueryUsuariosCacheKey(String? uniqueKey) =>
      _queryUsuariosManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
