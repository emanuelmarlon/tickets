import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool? pesquisa(
  String? textpesquisafor,
  String? textpesquisain,
  String? textpesquisain2,
  String? textpesquisain3,
) {
  if (textpesquisafor == null ||
      textpesquisain == null ||
      textpesquisain2 == null ||
      textpesquisain3 == null) {
    return false;
  }

  return (textpesquisain
          .toLowerCase()
          .contains(textpesquisafor.toLowerCase()) ||
      textpesquisain2.toLowerCase().contains(textpesquisafor.toLowerCase()) ||
      textpesquisain3.toLowerCase().contains(textpesquisafor.toLowerCase()));
}

bool? verificaNumeroCopy(String? numeroString) {
  if (numeroString == null || numeroString.isEmpty) {
    return null;
  }

  // Tentar converter a string para um número
  var numValue = int.tryParse(numeroString);
  if (numValue == null) {
    return null;
  }

  // Verificar se o número está no intervalo de 2 a 4 (inclusive)
  if (numValue >= 0.5 && numValue < 1) {
    return true;
  }

  // Verificar se o número é maior ou igual a 5
  if (numValue >= 1) {
    return false;
  }

  // Para todos os outros casos, retornar null
  return null;
}

DateTime? primeiroDiaDoMes(DateTime? dataAtual) {
  if (dataAtual == null) {
    dataAtual = DateTime.now();
  }
  return DateTime(dataAtual.year, dataAtual.month, 1);
}

DateTime formatarDataCopy(DateTime dataAtual) {
  // Convertendo a data para o horário local
  DateTime dataLocal = dataAtual.toLocal();

  // Redefinindo para o início do dia no horário local
  DateTime dataFormatada =
      DateTime(dataLocal.year, dataLocal.month, dataLocal.day, 0, 0, 0);

  // Convertendo de volta para UTC
  return dataFormatada.toUtc();
}

String? nomePrimeiraletra(String? nome) {
  if (nome == null || nome.isEmpty) {
    return null;
  }
  return nome[0];
}

DateTime formatDate(String data) {
  try {
    final DateFormat formatter =
        DateFormat('yyyy-MM-dd'); // Adjust format based on input
    return formatter.parse(data);
  } catch (e) {
    throw FormatException('Invalid date format: $data');
  }
}

String formatardataData(String data) {
  DateTime dataFormatada = DateTime.parse(data);
  String dataAjustada =
      "${dataFormatada.day.toString().padLeft(2, '0')}/${dataFormatada.month.toString().padLeft(2, '0')}/${dataFormatada.year}";

  return dataAjustada;
}

double somoarNumeros(List<double> lista) {
  double soma = 0.0;
  for (double numero in lista) {
    soma += numero;
  }
  return soma;
}

String? tempoSemComprar(DateTime? ultimaCompra) {
  if (ultimaCompra == null) {
    return null;
  }

  // Obter a data atual
  DateTime dataAtual = DateTime.now();

  // Calcular a diferença em dias
  Duration diferenca = dataAtual.difference(ultimaCompra);
  int diasDesdeUltimaCompra = diferenca.inDays;

  // Retornar a string formatada
  return "$diasDesdeUltimaCompra";
}

List<String> retiraDuplicados(List<String> lista) {
  return lista.toSet().toList();
}

double somarDoubleFiltro(List<PedidoStruct>? lista) {
  double soma = 0.0;
  if (lista != null) {
    for (var pedido in lista) {
      if (pedido.status != 'Cancelado' &&
          pedido.status != 'Aguardando pagamento') {
        soma += pedido.totalgeral;
      }
    }
  }
  return soma;
}

DateTime formatarData(DateTime dataAtual) {
  // Convertendo a data para o horário local
  DateTime dataLocal = dataAtual.toLocal();

  // Redefinindo para o final do dia no horário local
  DateTime dataFormatada =
      DateTime(dataLocal.year, dataLocal.month, dataLocal.day, 23, 59, 59, 999);

  // Convertendo de volta para UTC
  return dataFormatada.toUtc();
}

List<int> newCustomFunction(List<int> listaNumeros) {
  final random = math.Random();
  for (int i = 0; i < listaNumeros.length; i++) {
    if (listaNumeros[i] == 0) {
      listaNumeros[i] = random.nextInt(200) + 1;
    }
  }
  return listaNumeros;
}

bool? verificaNumero(String? numeroString) {
  if (numeroString == null || numeroString.isEmpty) {
    return null;
  }

  // Tentar converter a string para um número
  var numValue = int.tryParse(numeroString);
  if (numValue == null) {
    return null;
  }

  // Verificar se o número está no intervalo de 2 a 4 (inclusive)
  if (numValue >= 2 && numValue <= 4) {
    return true;
  }

  // Verificar se o número é maior ou igual a 5
  if (numValue >= 5) {
    return false;
  }

  // Para todos os outros casos, retornar null
  return null;
}

bool? pesquisaCopy(
  String? textpesquisafor,
  String? textpesquisain,
  String? textpesquisain2,
  String? textpesquisain3,
  String? textpesquisain4,
  String? textpesquisain5,
) {
  if (textpesquisafor == null ||
      textpesquisain == null ||
      textpesquisain2 == null ||
      textpesquisain3 == null ||
      textpesquisain4 == null ||
      textpesquisain5 == null) {
    return false;
  }

  return (textpesquisain
          .toLowerCase()
          .contains(textpesquisafor.toLowerCase()) ||
      textpesquisain2.toLowerCase().contains(textpesquisafor.toLowerCase()) ||
      textpesquisain3.toLowerCase().contains(textpesquisafor.toLowerCase()) ||
      textpesquisain4.toLowerCase().contains(textpesquisafor.toLowerCase()) ||
      textpesquisain5.toLowerCase().contains(textpesquisafor.toLowerCase()));
}

List<dynamic> ordenarDataTable(
  List<dynamic> jsonList,
  int columnIndex,
  bool isAscending,
) {
  jsonList.sort((a, b) {
    var valueA = a[columnIndex];
    var valueB = b[columnIndex];
    if (valueA is num && valueB is num) {
      return isAscending ? valueA.compareTo(valueB) : valueB.compareTo(valueA);
    } else if (valueA is String && valueB is String) {
      return isAscending ? valueA.compareTo(valueB) : valueB.compareTo(valueA);
    } else {
      return 0;
    }
  });

  return jsonList;
}

int convertDoubleEmInteiro(double numeroDouble) {
  return numeroDouble.toInt();
}

String formatardata(String data) {
  DateTime dataFormatada = DateTime.parse(data);
  String dataAjustada =
      "${dataFormatada.day.toString().padLeft(2, '0')}/${dataFormatada.month.toString().padLeft(2, '0')}/${dataFormatada.year}";
  String horaAjustada =
      "${dataFormatada.hour.toString().padLeft(2, '0')}:${dataFormatada.minute.toString().padLeft(2, '0')}";

  return "$dataAjustada $horaAjustada";
}

String jsonString(dynamic json) {
  return json.toString();
}

String formatarNumeroReais(String numero) {
  final formatador =
      NumberFormat.currency(locale: 'pt_BR', symbol: '', decimalDigits: 2);
  return formatador.format(numero);
}

double divisao(double numero) {
  return numero / 12;
}

String? dataTimeToString(DateTime? datatime) {
  return datatime?.toIso8601String();
}
