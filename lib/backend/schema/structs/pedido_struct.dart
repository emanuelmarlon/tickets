// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends BaseStruct {
  PedidoStruct({
    int? id,
    int? number,
    int? statusId,
    String? whatsappLink,
    bool? pix,
    String? cliente,
    double? totalgeral,
    String? cpf,
    String? idappmax,
    double? totalDesconto,
    String? updateAt,
    String? status,
    double? frete,
    String? cep,
    String? email,
    String? formaPagamento,
    String? cidade,
    String? purchaseUrl,
    String? firstName,
    String? lastName,
    String? createdAt,
    String? trackUrl,
    String? trackCode,
    String? condicaoPagamento,
    String? recuperacaoLink,
    String? endereco,
    String? phone,
    String? estado,
    String? iconPay,
    bool? autorizado,
    bool? estorno,
  })  : _id = id,
        _number = number,
        _statusId = statusId,
        _whatsappLink = whatsappLink,
        _pix = pix,
        _cliente = cliente,
        _totalgeral = totalgeral,
        _cpf = cpf,
        _idappmax = idappmax,
        _totalDesconto = totalDesconto,
        _updateAt = updateAt,
        _status = status,
        _frete = frete,
        _cep = cep,
        _email = email,
        _formaPagamento = formaPagamento,
        _cidade = cidade,
        _purchaseUrl = purchaseUrl,
        _firstName = firstName,
        _lastName = lastName,
        _createdAt = createdAt,
        _trackUrl = trackUrl,
        _trackCode = trackCode,
        _condicaoPagamento = condicaoPagamento,
        _recuperacaoLink = recuperacaoLink,
        _endereco = endereco,
        _phone = phone,
        _estado = estado,
        _iconPay = iconPay,
        _autorizado = autorizado,
        _estorno = estorno;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "status_id" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;

  void incrementStatusId(int amount) => statusId = statusId + amount;

  bool hasStatusId() => _statusId != null;

  // "whatsappLink" field.
  String? _whatsappLink;
  String get whatsappLink => _whatsappLink ?? '';
  set whatsappLink(String? val) => _whatsappLink = val;

  bool hasWhatsappLink() => _whatsappLink != null;

  // "pix" field.
  bool? _pix;
  bool get pix => _pix ?? false;
  set pix(bool? val) => _pix = val;

  bool hasPix() => _pix != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  set cliente(String? val) => _cliente = val;

  bool hasCliente() => _cliente != null;

  // "totalgeral" field.
  double? _totalgeral;
  double get totalgeral => _totalgeral ?? 0.0;
  set totalgeral(double? val) => _totalgeral = val;

  void incrementTotalgeral(double amount) => totalgeral = totalgeral + amount;

  bool hasTotalgeral() => _totalgeral != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "idappmax" field.
  String? _idappmax;
  String get idappmax => _idappmax ?? '';
  set idappmax(String? val) => _idappmax = val;

  bool hasIdappmax() => _idappmax != null;

  // "totalDesconto" field.
  double? _totalDesconto;
  double get totalDesconto => _totalDesconto ?? 0.0;
  set totalDesconto(double? val) => _totalDesconto = val;

  void incrementTotalDesconto(double amount) =>
      totalDesconto = totalDesconto + amount;

  bool hasTotalDesconto() => _totalDesconto != null;

  // "update_at" field.
  String? _updateAt;
  String get updateAt => _updateAt ?? '';
  set updateAt(String? val) => _updateAt = val;

  bool hasUpdateAt() => _updateAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "frete" field.
  double? _frete;
  double get frete => _frete ?? 0.0;
  set frete(double? val) => _frete = val;

  void incrementFrete(double amount) => frete = frete + amount;

  bool hasFrete() => _frete != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "formaPagamento" field.
  String? _formaPagamento;
  String get formaPagamento => _formaPagamento ?? '';
  set formaPagamento(String? val) => _formaPagamento = val;

  bool hasFormaPagamento() => _formaPagamento != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "purchase_url" field.
  String? _purchaseUrl;
  String get purchaseUrl => _purchaseUrl ?? '';
  set purchaseUrl(String? val) => _purchaseUrl = val;

  bool hasPurchaseUrl() => _purchaseUrl != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "Created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "track_url" field.
  String? _trackUrl;
  String get trackUrl => _trackUrl ?? '';
  set trackUrl(String? val) => _trackUrl = val;

  bool hasTrackUrl() => _trackUrl != null;

  // "track_code" field.
  String? _trackCode;
  String get trackCode => _trackCode ?? '';
  set trackCode(String? val) => _trackCode = val;

  bool hasTrackCode() => _trackCode != null;

  // "CondicaoPagamento" field.
  String? _condicaoPagamento;
  String get condicaoPagamento => _condicaoPagamento ?? '';
  set condicaoPagamento(String? val) => _condicaoPagamento = val;

  bool hasCondicaoPagamento() => _condicaoPagamento != null;

  // "Recuperacao_link" field.
  String? _recuperacaoLink;
  String get recuperacaoLink => _recuperacaoLink ?? '';
  set recuperacaoLink(String? val) => _recuperacaoLink = val;

  bool hasRecuperacaoLink() => _recuperacaoLink != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "iconPay" field.
  String? _iconPay;
  String get iconPay => _iconPay ?? '';
  set iconPay(String? val) => _iconPay = val;

  bool hasIconPay() => _iconPay != null;

  // "autorizado" field.
  bool? _autorizado;
  bool get autorizado => _autorizado ?? false;
  set autorizado(bool? val) => _autorizado = val;

  bool hasAutorizado() => _autorizado != null;

  // "estorno" field.
  bool? _estorno;
  bool get estorno => _estorno ?? false;
  set estorno(bool? val) => _estorno = val;

  bool hasEstorno() => _estorno != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        id: castToType<int>(data['id']),
        number: castToType<int>(data['number']),
        statusId: castToType<int>(data['status_id']),
        whatsappLink: data['whatsappLink'] as String?,
        pix: data['pix'] as bool?,
        cliente: data['cliente'] as String?,
        totalgeral: castToType<double>(data['totalgeral']),
        cpf: data['cpf'] as String?,
        idappmax: data['idappmax'] as String?,
        totalDesconto: castToType<double>(data['totalDesconto']),
        updateAt: data['update_at'] as String?,
        status: data['status'] as String?,
        frete: castToType<double>(data['frete']),
        cep: data['cep'] as String?,
        email: data['email'] as String?,
        formaPagamento: data['formaPagamento'] as String?,
        cidade: data['cidade'] as String?,
        purchaseUrl: data['purchase_url'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        createdAt: data['Created_at'] as String?,
        trackUrl: data['track_url'] as String?,
        trackCode: data['track_code'] as String?,
        condicaoPagamento: data['CondicaoPagamento'] as String?,
        recuperacaoLink: data['Recuperacao_link'] as String?,
        endereco: data['endereco'] as String?,
        phone: data['phone'] as String?,
        estado: data['estado'] as String?,
        iconPay: data['iconPay'] as String?,
        autorizado: data['autorizado'] as bool?,
        estorno: data['estorno'] as bool?,
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map ? PedidoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'number': _number,
        'status_id': _statusId,
        'whatsappLink': _whatsappLink,
        'pix': _pix,
        'cliente': _cliente,
        'totalgeral': _totalgeral,
        'cpf': _cpf,
        'idappmax': _idappmax,
        'totalDesconto': _totalDesconto,
        'update_at': _updateAt,
        'status': _status,
        'frete': _frete,
        'cep': _cep,
        'email': _email,
        'formaPagamento': _formaPagamento,
        'cidade': _cidade,
        'purchase_url': _purchaseUrl,
        'first_name': _firstName,
        'last_name': _lastName,
        'Created_at': _createdAt,
        'track_url': _trackUrl,
        'track_code': _trackCode,
        'CondicaoPagamento': _condicaoPagamento,
        'Recuperacao_link': _recuperacaoLink,
        'endereco': _endereco,
        'phone': _phone,
        'estado': _estado,
        'iconPay': _iconPay,
        'autorizado': _autorizado,
        'estorno': _estorno,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'status_id': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'whatsappLink': serializeParam(
          _whatsappLink,
          ParamType.String,
        ),
        'pix': serializeParam(
          _pix,
          ParamType.bool,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.String,
        ),
        'totalgeral': serializeParam(
          _totalgeral,
          ParamType.double,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'idappmax': serializeParam(
          _idappmax,
          ParamType.String,
        ),
        'totalDesconto': serializeParam(
          _totalDesconto,
          ParamType.double,
        ),
        'update_at': serializeParam(
          _updateAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'frete': serializeParam(
          _frete,
          ParamType.double,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'formaPagamento': serializeParam(
          _formaPagamento,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'purchase_url': serializeParam(
          _purchaseUrl,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'Created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'track_url': serializeParam(
          _trackUrl,
          ParamType.String,
        ),
        'track_code': serializeParam(
          _trackCode,
          ParamType.String,
        ),
        'CondicaoPagamento': serializeParam(
          _condicaoPagamento,
          ParamType.String,
        ),
        'Recuperacao_link': serializeParam(
          _recuperacaoLink,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'iconPay': serializeParam(
          _iconPay,
          ParamType.String,
        ),
        'autorizado': serializeParam(
          _autorizado,
          ParamType.bool,
        ),
        'estorno': serializeParam(
          _estorno,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        statusId: deserializeParam(
          data['status_id'],
          ParamType.int,
          false,
        ),
        whatsappLink: deserializeParam(
          data['whatsappLink'],
          ParamType.String,
          false,
        ),
        pix: deserializeParam(
          data['pix'],
          ParamType.bool,
          false,
        ),
        cliente: deserializeParam(
          data['cliente'],
          ParamType.String,
          false,
        ),
        totalgeral: deserializeParam(
          data['totalgeral'],
          ParamType.double,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        idappmax: deserializeParam(
          data['idappmax'],
          ParamType.String,
          false,
        ),
        totalDesconto: deserializeParam(
          data['totalDesconto'],
          ParamType.double,
          false,
        ),
        updateAt: deserializeParam(
          data['update_at'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        frete: deserializeParam(
          data['frete'],
          ParamType.double,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        formaPagamento: deserializeParam(
          data['formaPagamento'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        purchaseUrl: deserializeParam(
          data['purchase_url'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['Created_at'],
          ParamType.String,
          false,
        ),
        trackUrl: deserializeParam(
          data['track_url'],
          ParamType.String,
          false,
        ),
        trackCode: deserializeParam(
          data['track_code'],
          ParamType.String,
          false,
        ),
        condicaoPagamento: deserializeParam(
          data['CondicaoPagamento'],
          ParamType.String,
          false,
        ),
        recuperacaoLink: deserializeParam(
          data['Recuperacao_link'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        iconPay: deserializeParam(
          data['iconPay'],
          ParamType.String,
          false,
        ),
        autorizado: deserializeParam(
          data['autorizado'],
          ParamType.bool,
          false,
        ),
        estorno: deserializeParam(
          data['estorno'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct &&
        id == other.id &&
        number == other.number &&
        statusId == other.statusId &&
        whatsappLink == other.whatsappLink &&
        pix == other.pix &&
        cliente == other.cliente &&
        totalgeral == other.totalgeral &&
        cpf == other.cpf &&
        idappmax == other.idappmax &&
        totalDesconto == other.totalDesconto &&
        updateAt == other.updateAt &&
        status == other.status &&
        frete == other.frete &&
        cep == other.cep &&
        email == other.email &&
        formaPagamento == other.formaPagamento &&
        cidade == other.cidade &&
        purchaseUrl == other.purchaseUrl &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        createdAt == other.createdAt &&
        trackUrl == other.trackUrl &&
        trackCode == other.trackCode &&
        condicaoPagamento == other.condicaoPagamento &&
        recuperacaoLink == other.recuperacaoLink &&
        endereco == other.endereco &&
        phone == other.phone &&
        estado == other.estado &&
        iconPay == other.iconPay &&
        autorizado == other.autorizado &&
        estorno == other.estorno;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        number,
        statusId,
        whatsappLink,
        pix,
        cliente,
        totalgeral,
        cpf,
        idappmax,
        totalDesconto,
        updateAt,
        status,
        frete,
        cep,
        email,
        formaPagamento,
        cidade,
        purchaseUrl,
        firstName,
        lastName,
        createdAt,
        trackUrl,
        trackCode,
        condicaoPagamento,
        recuperacaoLink,
        endereco,
        phone,
        estado,
        iconPay,
        autorizado,
        estorno
      ]);
}

PedidoStruct createPedidoStruct({
  int? id,
  int? number,
  int? statusId,
  String? whatsappLink,
  bool? pix,
  String? cliente,
  double? totalgeral,
  String? cpf,
  String? idappmax,
  double? totalDesconto,
  String? updateAt,
  String? status,
  double? frete,
  String? cep,
  String? email,
  String? formaPagamento,
  String? cidade,
  String? purchaseUrl,
  String? firstName,
  String? lastName,
  String? createdAt,
  String? trackUrl,
  String? trackCode,
  String? condicaoPagamento,
  String? recuperacaoLink,
  String? endereco,
  String? phone,
  String? estado,
  String? iconPay,
  bool? autorizado,
  bool? estorno,
}) =>
    PedidoStruct(
      id: id,
      number: number,
      statusId: statusId,
      whatsappLink: whatsappLink,
      pix: pix,
      cliente: cliente,
      totalgeral: totalgeral,
      cpf: cpf,
      idappmax: idappmax,
      totalDesconto: totalDesconto,
      updateAt: updateAt,
      status: status,
      frete: frete,
      cep: cep,
      email: email,
      formaPagamento: formaPagamento,
      cidade: cidade,
      purchaseUrl: purchaseUrl,
      firstName: firstName,
      lastName: lastName,
      createdAt: createdAt,
      trackUrl: trackUrl,
      trackCode: trackCode,
      condicaoPagamento: condicaoPagamento,
      recuperacaoLink: recuperacaoLink,
      endereco: endereco,
      phone: phone,
      estado: estado,
      iconPay: iconPay,
      autorizado: autorizado,
      estorno: estorno,
    );
