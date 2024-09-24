import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RemessaPedidoCall {
  static Future<ApiCallResponse> call({
    String? id = '888030045735280',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Remessa Pedido',
      apiUrl:
          'https://api.intelipost.com.br/api/v1/shipment_order/sales_order_number/$id',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'api-key':
            'b9455e6b3515d8fdafa2a045964a0666fcfd0d49857a5090af99d7c6c45f1ea4',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? freteCobrado(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].provider_shipping_costs''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].end_customer.first_name''',
      ));
  static String? sobrenome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].end_customer.last_name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].end_customer.email''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].end_customer.shipping_city''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].end_customer.shipping_state''',
      ));
  static int? prazoEntrega(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].estimated_delivery_days_lp''',
      ));
  static String? codeRastreio(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].shipment_order_volume_array[:].logistic_provider_tracking_code''',
      ));
  static String? chaveNFE(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].shipment_order_volume_array[:].shipment_order_volume_invoice.invoice_key''',
      ));
  static String? numerNFE(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.shipment_orders[:].shipment_order_volume_array[:].shipment_order_volume_invoice.invoice_number''',
      ));
}

class RemessaNFECall {
  static Future<ApiCallResponse> call({
    String? nfe = '33059',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Remessa NFE',
      apiUrl:
          'https://api.intelipost.com.br/api/v1/shipment_order/invoice/$nfe',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'api-key':
            'b9455e6b3515d8fdafa2a045964a0666fcfd0d49857a5090af99d7c6c45f1ea4',
      },
      params: {
        'nfe': nfe,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.first_name''',
      ));
  static String? sobrenome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.last_name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.email''',
      ));
  static String? numeroPedido(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.content[:].order_number''',
      ));
  static String? rastreio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].shipment_order_volume_array[:].logistic_provider_tracking_code''',
      ));
  static double? valor(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.content[:].shipment_order_volume_array[:].shipment_order_volume_invoice.invoice_total_value''',
      ));
  static String? chave(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].shipment_order_volume_array[:].shipment_order_volume_invoice.invoice_key''',
      ));
  static String? pedidoVenda(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.content[:].sales_order_number''',
      ));
  static String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.federal_tax_payer_id''',
      ));
  static String? endereco(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.shipping_address''',
      ));
  static String? numeroend(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.shipping_number''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.shipping_quarter''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.shipping_city''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.shipping_zip_code''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content[:].end_customer.shipping_state''',
      ));
  static String? statustransportadir(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.content[:].shipment_order_volume_array[:].shipment_order_volume_state_localized''',
      ));
}

class TrackingCall {
  static Future<ApiCallResponse> call({
    String? id = '888030094482913',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Tracking',
      apiUrl:
          'https://n8n.trihaircosmeticos.com.br/webhook/tracking_intelipost',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? fretecusto(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].shipping_cost''',
      ));
  static String? entregaPrev(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].estimated_delivery_date_iso''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].first_name''',
      ));
  static String? sobrenome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone''',
      ));
  static String? endereo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].endereco''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].numero''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidade''',
      ));
  static String? transportadora(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].logistic_provider_name''',
      ));
  static String? urlTracking(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].tracking_url''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CEP''',
      ));
  static String? rastreio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tracking_code''',
      ));
  static int? dayslp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].days_lp''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].state''',
      ));
  static String? nfNumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].invoice_number''',
      ));
  static String? chave(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].invoice_key''',
      ));
  static double? valorproduto(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].Product_value''',
      ));
  static double? totalNF(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].total_value''',
      ));
  static String? dataNF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].invoice_date''',
      ));
  static String? statusentrega(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].macro_state''',
      ));
  static String? descricaStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].descricao_tracking''',
      ));
  static String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cpf''',
      ));
}

class TrackingCopyCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Tracking Copy',
      apiUrl:
          'https://n8n.trihaircosmeticos.com.br/webhook/tracking_intelipost',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? fretecusto(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].shipping_cost''',
      ));
  static String? entregaPrev(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].estimated_delivery_date_iso''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].first_name''',
      ));
  static String? sobrenome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone''',
      ));
  static String? endereo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].endereco''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].numero''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidade''',
      ));
  static String? transportadora(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].logistic_provider_name''',
      ));
  static String? urlTracking(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].tracking_url''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CEP''',
      ));
  static String? rastreio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tracking_code''',
      ));
  static int? dayslp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].days_lp''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].state''',
      ));
  static String? nfNumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].invoice_number''',
      ));
  static String? chave(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].invoice_key''',
      ));
  static double? valorproduto(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].Product_value''',
      ));
  static double? totalNF(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].total_value''',
      ));
  static String? dataNF(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].invoice_date''',
      ));
  static String? statusentrega(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].macro_state''',
      ));
  static String? descricaStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].descricao_tracking''',
      ));
}

class PedidoYampiCall {
  static Future<ApiCallResponse> call({
    String? id = '107582865',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Pedido Yampi',
      apiUrl: 'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? orderyampi(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.number''',
      ));
  static double? desconto(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.value_discount''',
      ));
  static String? tipoPagamento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payments[:].name''',
      ));
  static String? imagemPagamento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.payments[:].icon_url''',
      ));
  static String? urlWhatsapp(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.billet_whatsapp_link''',
      ));
  static String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.created_at.date''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.status.data.name''',
      ));
  static String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customer.data.cpf''',
      ));
  static double? valorTotal(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.value_total''',
      ));
  static double? valorProdutos(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data.value_products''',
      ));
  static double? frete(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.value_shipment''',
      ));
  static String? nomeTransportadora(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.shipment_service''',
      ));
  static String? ip(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.ip''',
      ));
  static String? whatsapp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customer.data.phone.formated_number''',
      ));
  static String? rastreio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.track_code''',
      ));
  static String? urlRastrio(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.track_url''',
      ));
  static dynamic cliente(dynamic response) => getJsonField(
        response,
        r'''$.data.customer.data''',
      );
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customer.data.name''',
      ));
}

class ListarProdutosDeUmPedidoYampiCall {
  static Future<ApiCallResponse> call({
    String? id = '107582865',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar produtos de um pedido yampi',
      apiUrl:
          'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id/items',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static dynamic skuData(dynamic response) => getJsonField(
        response,
        r'''$.data[:].sku.data''',
      );
}

class ListarHistoricoDeStatusDeUmPedidoYampyCall {
  static Future<ApiCallResponse> call({
    String? id = '107582865',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar historico de status de um pedido yampy',
      apiUrl:
          'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id/statuses',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ListarNotaFiscalDeUmPedidoCall {
  static Future<ApiCallResponse> call({
    String? id = '108539755',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar nota fiscal de um pedido',
      apiUrl:
          'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id/invoices',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static String? serie(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].series''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].number''',
      ));
  static String? chave(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].key''',
      ));
  static double? valor(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].value''',
      ));
  static double? valorProdutos(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data[:].products_value''',
      ));
  static String? dataEmissao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].created_at.date''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].url''',
      ));
}

class ListarRastreamentoCall {
  static Future<ApiCallResponse> call({
    String? id = '118540082',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar rastreamento',
      apiUrl:
          'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id/tracking',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ListarEmailsCall {
  static Future<ApiCallResponse> call({
    String? id = '107582865',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar emails',
      apiUrl:
          'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id/emails',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class ListarTransacoesCall {
  static Future<ApiCallResponse> call({
    String? id = '108539755',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar transacoes',
      apiUrl:
          'https://api.dooki.com.br/v2/trihair-cosmeticos/orders/$id/transactions',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static String? idappmax(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].gateway_transaction_id''',
      ));
  static String? parcelas(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].installment_formated''',
      ));
  static String? formaPagamento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].payment.data.alias''',
      ));
  static String? svgPix(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].payment.data.icon_url''',
      ));
  static double? valor(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].amount''',
      ));
}

class BuscaPedidosClientesCall {
  static Future<ApiCallResponse> call({
    String? q = '09842654656',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca Pedidos Clientes',
      apiUrl: 'https://api.dooki.com.br/v2/trihair-cosmeticos/orders',
      callType: ApiCallType.GET,
      headers: {
        'User-Token': 'NfxXUURCvhsDEH3CwLJlXKpAEBPc3EaUFAxDEpqM',
        'User-Secret-Key': 'sk_1yvQaxEweokR1wMPWs9nOOl6J1bQqjP4e5sot',
      },
      params: {
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? resultados(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class PedidosByanaYampiCPFCall {
  static Future<ApiCallResponse> call({
    String? q = 'roselisousa7b@gmail.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Pedidos Byana Yampi CPF',
      apiUrl: 'https://n8n.trihaircosmeticos.com.br/webhook/consultabyana',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'q': q,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? resultadoPedidos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static int? numero(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].number''',
      ));
  static double? totalGeral(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].totalgeral''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static List? itenspedidos(dynamic response) => getJsonField(
        response,
        r'''$[:].itens''',
        true,
      ) as List?;
  static String? atualizado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].update_at''',
      ));
  static String? criado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Created_at''',
      ));
}

class PedidosByanaYampiCPFMarlonCall {
  static Future<ApiCallResponse> call({
    String? q = '03246258554',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Pedidos Byana Yampi CPF marlon',
      apiUrl: 'https://n8n.trihaircosmeticos.com.br/webhook/consultabyana2',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'q': q,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? resultadoPedidos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static int? numero(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].number''',
      ));
  static double? totalGeral(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].totalgeral''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static List? itenspedidos(dynamic response) => getJsonField(
        response,
        r'''$[:].itens''',
        true,
      ) as List?;
  static String? atualizado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].update_at''',
      ));
  static String? criado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Created_at''',
      ));
}

class ClienteBlingCall {
  static Future<ApiCallResponse> call({
    String? q = '05595111593',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'clienteBling',
      apiUrl: 'https://n8n.trihaircosmeticos.com.br/webhook/blingcliente',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'q': q,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic cliente(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class BuscaClientesByanaChatCall {
  static Future<ApiCallResponse> call({
    String? email = 'laissacramentovix@gmail.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca Clientes ByanaChat',
      apiUrl: 'https://app.byana.io/api/subscribers',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer SRqvYYeSqN94jwlDoIQ6g1ZdHejzDkp7JDgf5M9J7XEbURXOTOk6SWupmGok',
      },
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic resultado(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class BuscaEmailCall {
  static Future<ApiCallResponse> call({
    List<String>? emailsList,
  }) async {
    final emails = _serializeList(emailsList);

    final ffApiRequestBody = '''
{
  "email_list": $emails
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'busca email',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/buscar_por_emails',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TotaisCall {
  static Future<ApiCallResponse> call({
    String? uid = '538cd78e-278b-4754-b2e5-4ac526b6dcc8',
  }) async {
    final ffApiRequestBody = '''
{
  "uid_param": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'totais',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/get_open_items',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? totalTickets(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportet''',
      ));
  static int? totalLogistica(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportelogistica''',
      ));
  static int? totalAtividades(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_atividades''',
      ));
}

class TotaisGeralCall {
  static Future<ApiCallResponse> call({
    int? usuarioId = 4,
  }) async {
    final ffApiRequestBody = '''
{
  "p_user_id": $usuarioId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'totais geral',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/total_geral',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? ticketAberto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportet_aberto''',
      ));
  static int? ticketEmAndamento(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportet_em_andamento''',
      ));
  static int? ticketPendente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportet_pendente''',
      ));
  static int? ticketConcluido(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportet_concluido''',
      ));
  static int? logisticaAberto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportelogistica_aberto''',
      ));
  static int? logisticaEmAndamento(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportelogistica_em_andamento''',
      ));
  static int? logisticaPendente(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportelogistica_pendente''',
      ));
  static int? logisticaConcluido(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportelogistica_concluido''',
      ));
  static int? atividadesAberto(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_atividades_aberto''',
      ));
  static int? atividadesEmAndamento(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_atividades_em_andamento''',
      ));
  static int? atividadesPndente(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_atividades_pendente''',
      ));
  static int? atividadesConcluido(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_atividades_concluido''',
      ));
  static int? cancelamento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_suportet_aberto_cancelamento_true''',
      ));
  static int? totalAbertoUsuario(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].total_atividades_aberto_userid''',
      ));
}

class DisparoDeMensagemCall {
  static Future<ApiCallResponse> call({
    int? id = 0,
    String? rastreio = '0000',
    String? nota = '0000',
    String? chave = '000000',
    String? motivo = 'pendente',
    String? descricao = 'teste',
  }) async {
    final ffApiRequestBody = '''
{
  "number": "120363231860667730@g.us",
  "options": {
    "delay": 1200,
    "presence": "composing",
    "linkPreview": false
  },
  "textMessage": {
    "text": "📢 *Notificação de Ticket Criado*\\n\\nInformamos que o *ticket #$id* foi criado para acompanhamento na entrega do pedido.\\n\\n🔍 *Detalhes do Ticket:*\\n\\n📌 *Status:* Aberto\\n⚠️ *Motivo do Ticket:* $motivo\\n📝 *Descrição do Problema:* $descricao.\\n\\n---\\n\\n📦 *Número da Nfe:* $nota\\n🔑 *Chave de Acesso:* $chave\\n🚚 *Número de Rastreamento:* $rastreio\\n\\n🚀 Solicitamos atenção imediata para a resolução deste problema."
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Disparo de Mensagem',
      apiUrl: 'https://wapi.jadada.net/message/sendText/TrihairNT',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '0s3kse5b9iqedxfqjb890dc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DisparoDeMensagemCopyCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? rastreio = '',
    String? nota = '',
    String? chave = '',
    String? motivo = '',
    String? descricao = '',
  }) async {
    const ffApiRequestBody = '''
{
  "number": "71985571098",
  "options": {
    "delay": 1200,
    "presence": "composing",
    "linkPreview": false
  },
  "textMessage": {
    "text": "oi"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Disparo de Mensagem Copy',
      apiUrl: 'https://wapi.jadada.net/message/sendText/TrihairNT',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '0s3kse5b9iqedxfqjb890dc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TicketMesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ticket mes',
      apiUrl: 'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/ticket_mes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TicketLogisticaMesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ticket logistica mes',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/ticket_logistica_mes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtividadesMesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'atividades mes',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/ticket_atividades_mes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaClienteCall {
  static Future<ApiCallResponse> call({
    String? busca = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'busca cliente',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/user_tt?or=(cpf.ilike.%25$busca%25,email.ilike.%25$busca%25,nome.ilike.%25$busca%25)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Range': '0-2000',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaUsuarioCall {
  static Future<ApiCallResponse> call({
    String? busca = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'busca usuario',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/usuarios?or=(telefone.ilike.%25$busca%25,email.ilike.%25$busca%25,nome.ilike.%25$busca%25)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Range': '0-2000',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TotaisMotivosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'totais motivos',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/contar_motivos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TotaisTipoSolicitacaoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'totais tipo solicitacao',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/contar_tipos_solicitacao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AlterarSenhaCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$senha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'alterar senha',
      apiUrl: 'https://rehqrkhyxcbrginanzgn.supabase.co/auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EstornoAppmaxCall {
  static Future<ApiCallResponse> call({
    String? idAppmax =
        'Você deseja estornar o valor do pedido? Clique no botão abaixo para confirmar.',
  }) async {
    final ffApiRequestBody = '''
{
  "access-token": "55F21A0A-8CA5E636-0ED3F750-27064FD2",
  "order_id": "$idAppmax",
  "refund_type": "total"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Estorno Appmax',
      apiUrl: 'https://admin.appmax.com.br/api/v3/refund',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AlterarStatusPedidoMercosCall {
  static Future<ApiCallResponse> call({
    String? status = 'Aberto',
    String? pedidoMercos = '24452',
  }) async {
    final ffApiRequestBody = '''
{
  "p_numeromercos": "$pedidoMercos",
  "p_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ALTERAR STATUS PEDIDO MERCOS',
      apiUrl:
          'https://rehqrkhyxcbrginanzgn.supabase.co/rest/v1/rpc/atualizar_status',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJlaHFya2h5eGNicmdpbmFuemduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MjM0OTMsImV4cCI6MjAzMTM5OTQ5M30._ja3YpEzFxlWUPhjevKrw7IvPDR7MkpW3NQO9wZ-MJ0',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
