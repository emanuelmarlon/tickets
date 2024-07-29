// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IpStruct extends BaseStruct {
  IpStruct({
    String? trackingUrl,
    int? daysLp,
    String? logisticProviderName,
    double? shippingCost,
    String? estimatedDeliveryDateIso,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? endereco,
    String? numero,
    String? bairro,
    String? cidade,
    String? cep,
    String? state,
    String? trackingCode,
    String? invoiceNumber,
    String? invoiceKey,
    double? productValue,
    double? totalValue,
    String? invoiceDate,
    String? macroState,
    String? descricaoTracking,
    String? cpf,
  })  : _trackingUrl = trackingUrl,
        _daysLp = daysLp,
        _logisticProviderName = logisticProviderName,
        _shippingCost = shippingCost,
        _estimatedDeliveryDateIso = estimatedDeliveryDateIso,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _phone = phone,
        _endereco = endereco,
        _numero = numero,
        _bairro = bairro,
        _cidade = cidade,
        _cep = cep,
        _state = state,
        _trackingCode = trackingCode,
        _invoiceNumber = invoiceNumber,
        _invoiceKey = invoiceKey,
        _productValue = productValue,
        _totalValue = totalValue,
        _invoiceDate = invoiceDate,
        _macroState = macroState,
        _descricaoTracking = descricaoTracking,
        _cpf = cpf;

  // "tracking_url" field.
  String? _trackingUrl;
  String get trackingUrl => _trackingUrl ?? '';
  set trackingUrl(String? val) => _trackingUrl = val;

  bool hasTrackingUrl() => _trackingUrl != null;

  // "days_lp" field.
  int? _daysLp;
  int get daysLp => _daysLp ?? 0;
  set daysLp(int? val) => _daysLp = val;

  void incrementDaysLp(int amount) => daysLp = daysLp + amount;

  bool hasDaysLp() => _daysLp != null;

  // "logistic_provider_name" field.
  String? _logisticProviderName;
  String get logisticProviderName => _logisticProviderName ?? '';
  set logisticProviderName(String? val) => _logisticProviderName = val;

  bool hasLogisticProviderName() => _logisticProviderName != null;

  // "shipping_cost" field.
  double? _shippingCost;
  double get shippingCost => _shippingCost ?? 0.0;
  set shippingCost(double? val) => _shippingCost = val;

  void incrementShippingCost(double amount) =>
      shippingCost = shippingCost + amount;

  bool hasShippingCost() => _shippingCost != null;

  // "estimated_delivery_date_iso" field.
  String? _estimatedDeliveryDateIso;
  String get estimatedDeliveryDateIso => _estimatedDeliveryDateIso ?? '';
  set estimatedDeliveryDateIso(String? val) => _estimatedDeliveryDateIso = val;

  bool hasEstimatedDeliveryDateIso() => _estimatedDeliveryDateIso != null;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "tracking_code" field.
  String? _trackingCode;
  String get trackingCode => _trackingCode ?? '';
  set trackingCode(String? val) => _trackingCode = val;

  bool hasTrackingCode() => _trackingCode != null;

  // "invoice_number" field.
  String? _invoiceNumber;
  String get invoiceNumber => _invoiceNumber ?? '';
  set invoiceNumber(String? val) => _invoiceNumber = val;

  bool hasInvoiceNumber() => _invoiceNumber != null;

  // "invoice_key" field.
  String? _invoiceKey;
  String get invoiceKey => _invoiceKey ?? '';
  set invoiceKey(String? val) => _invoiceKey = val;

  bool hasInvoiceKey() => _invoiceKey != null;

  // "Product_value" field.
  double? _productValue;
  double get productValue => _productValue ?? 0.0;
  set productValue(double? val) => _productValue = val;

  void incrementProductValue(double amount) =>
      productValue = productValue + amount;

  bool hasProductValue() => _productValue != null;

  // "total_value" field.
  double? _totalValue;
  double get totalValue => _totalValue ?? 0.0;
  set totalValue(double? val) => _totalValue = val;

  void incrementTotalValue(double amount) => totalValue = totalValue + amount;

  bool hasTotalValue() => _totalValue != null;

  // "invoice_date" field.
  String? _invoiceDate;
  String get invoiceDate => _invoiceDate ?? '';
  set invoiceDate(String? val) => _invoiceDate = val;

  bool hasInvoiceDate() => _invoiceDate != null;

  // "macro_state" field.
  String? _macroState;
  String get macroState => _macroState ?? '';
  set macroState(String? val) => _macroState = val;

  bool hasMacroState() => _macroState != null;

  // "descricao_tracking" field.
  String? _descricaoTracking;
  String get descricaoTracking => _descricaoTracking ?? '';
  set descricaoTracking(String? val) => _descricaoTracking = val;

  bool hasDescricaoTracking() => _descricaoTracking != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  static IpStruct fromMap(Map<String, dynamic> data) => IpStruct(
        trackingUrl: data['tracking_url'] as String?,
        daysLp: castToType<int>(data['days_lp']),
        logisticProviderName: data['logistic_provider_name'] as String?,
        shippingCost: castToType<double>(data['shipping_cost']),
        estimatedDeliveryDateIso:
            data['estimated_delivery_date_iso'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        endereco: data['endereco'] as String?,
        numero: data['numero'] as String?,
        bairro: data['bairro'] as String?,
        cidade: data['cidade'] as String?,
        cep: data['CEP'] as String?,
        state: data['state'] as String?,
        trackingCode: data['tracking_code'] as String?,
        invoiceNumber: data['invoice_number'] as String?,
        invoiceKey: data['invoice_key'] as String?,
        productValue: castToType<double>(data['Product_value']),
        totalValue: castToType<double>(data['total_value']),
        invoiceDate: data['invoice_date'] as String?,
        macroState: data['macro_state'] as String?,
        descricaoTracking: data['descricao_tracking'] as String?,
        cpf: data['cpf'] as String?,
      );

  static IpStruct? maybeFromMap(dynamic data) =>
      data is Map ? IpStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tracking_url': _trackingUrl,
        'days_lp': _daysLp,
        'logistic_provider_name': _logisticProviderName,
        'shipping_cost': _shippingCost,
        'estimated_delivery_date_iso': _estimatedDeliveryDateIso,
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'phone': _phone,
        'endereco': _endereco,
        'numero': _numero,
        'bairro': _bairro,
        'cidade': _cidade,
        'CEP': _cep,
        'state': _state,
        'tracking_code': _trackingCode,
        'invoice_number': _invoiceNumber,
        'invoice_key': _invoiceKey,
        'Product_value': _productValue,
        'total_value': _totalValue,
        'invoice_date': _invoiceDate,
        'macro_state': _macroState,
        'descricao_tracking': _descricaoTracking,
        'cpf': _cpf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tracking_url': serializeParam(
          _trackingUrl,
          ParamType.String,
        ),
        'days_lp': serializeParam(
          _daysLp,
          ParamType.int,
        ),
        'logistic_provider_name': serializeParam(
          _logisticProviderName,
          ParamType.String,
        ),
        'shipping_cost': serializeParam(
          _shippingCost,
          ParamType.double,
        ),
        'estimated_delivery_date_iso': serializeParam(
          _estimatedDeliveryDateIso,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'CEP': serializeParam(
          _cep,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'tracking_code': serializeParam(
          _trackingCode,
          ParamType.String,
        ),
        'invoice_number': serializeParam(
          _invoiceNumber,
          ParamType.String,
        ),
        'invoice_key': serializeParam(
          _invoiceKey,
          ParamType.String,
        ),
        'Product_value': serializeParam(
          _productValue,
          ParamType.double,
        ),
        'total_value': serializeParam(
          _totalValue,
          ParamType.double,
        ),
        'invoice_date': serializeParam(
          _invoiceDate,
          ParamType.String,
        ),
        'macro_state': serializeParam(
          _macroState,
          ParamType.String,
        ),
        'descricao_tracking': serializeParam(
          _descricaoTracking,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
      }.withoutNulls;

  static IpStruct fromSerializableMap(Map<String, dynamic> data) => IpStruct(
        trackingUrl: deserializeParam(
          data['tracking_url'],
          ParamType.String,
          false,
        ),
        daysLp: deserializeParam(
          data['days_lp'],
          ParamType.int,
          false,
        ),
        logisticProviderName: deserializeParam(
          data['logistic_provider_name'],
          ParamType.String,
          false,
        ),
        shippingCost: deserializeParam(
          data['shipping_cost'],
          ParamType.double,
          false,
        ),
        estimatedDeliveryDateIso: deserializeParam(
          data['estimated_delivery_date_iso'],
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['CEP'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        trackingCode: deserializeParam(
          data['tracking_code'],
          ParamType.String,
          false,
        ),
        invoiceNumber: deserializeParam(
          data['invoice_number'],
          ParamType.String,
          false,
        ),
        invoiceKey: deserializeParam(
          data['invoice_key'],
          ParamType.String,
          false,
        ),
        productValue: deserializeParam(
          data['Product_value'],
          ParamType.double,
          false,
        ),
        totalValue: deserializeParam(
          data['total_value'],
          ParamType.double,
          false,
        ),
        invoiceDate: deserializeParam(
          data['invoice_date'],
          ParamType.String,
          false,
        ),
        macroState: deserializeParam(
          data['macro_state'],
          ParamType.String,
          false,
        ),
        descricaoTracking: deserializeParam(
          data['descricao_tracking'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IpStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IpStruct &&
        trackingUrl == other.trackingUrl &&
        daysLp == other.daysLp &&
        logisticProviderName == other.logisticProviderName &&
        shippingCost == other.shippingCost &&
        estimatedDeliveryDateIso == other.estimatedDeliveryDateIso &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        endereco == other.endereco &&
        numero == other.numero &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        cep == other.cep &&
        state == other.state &&
        trackingCode == other.trackingCode &&
        invoiceNumber == other.invoiceNumber &&
        invoiceKey == other.invoiceKey &&
        productValue == other.productValue &&
        totalValue == other.totalValue &&
        invoiceDate == other.invoiceDate &&
        macroState == other.macroState &&
        descricaoTracking == other.descricaoTracking &&
        cpf == other.cpf;
  }

  @override
  int get hashCode => const ListEquality().hash([
        trackingUrl,
        daysLp,
        logisticProviderName,
        shippingCost,
        estimatedDeliveryDateIso,
        firstName,
        lastName,
        email,
        phone,
        endereco,
        numero,
        bairro,
        cidade,
        cep,
        state,
        trackingCode,
        invoiceNumber,
        invoiceKey,
        productValue,
        totalValue,
        invoiceDate,
        macroState,
        descricaoTracking,
        cpf
      ]);
}

IpStruct createIpStruct({
  String? trackingUrl,
  int? daysLp,
  String? logisticProviderName,
  double? shippingCost,
  String? estimatedDeliveryDateIso,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  String? endereco,
  String? numero,
  String? bairro,
  String? cidade,
  String? cep,
  String? state,
  String? trackingCode,
  String? invoiceNumber,
  String? invoiceKey,
  double? productValue,
  double? totalValue,
  String? invoiceDate,
  String? macroState,
  String? descricaoTracking,
  String? cpf,
}) =>
    IpStruct(
      trackingUrl: trackingUrl,
      daysLp: daysLp,
      logisticProviderName: logisticProviderName,
      shippingCost: shippingCost,
      estimatedDeliveryDateIso: estimatedDeliveryDateIso,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      endereco: endereco,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      cep: cep,
      state: state,
      trackingCode: trackingCode,
      invoiceNumber: invoiceNumber,
      invoiceKey: invoiceKey,
      productValue: productValue,
      totalValue: totalValue,
      invoiceDate: invoiceDate,
      macroState: macroState,
      descricaoTracking: descricaoTracking,
      cpf: cpf,
    );
