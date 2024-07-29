// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataStruct extends BaseStruct {
  ChartDataStruct({
    String? xTitle,
    int? yValue1,
    int? yValue2,
  })  : _xTitle = xTitle,
        _yValue1 = yValue1,
        _yValue2 = yValue2;

  // "xTitle" field.
  String? _xTitle;
  String get xTitle => _xTitle ?? '';
  set xTitle(String? val) => _xTitle = val;

  bool hasXTitle() => _xTitle != null;

  // "yValue1" field.
  int? _yValue1;
  int get yValue1 => _yValue1 ?? 0;
  set yValue1(int? val) => _yValue1 = val;

  void incrementYValue1(int amount) => yValue1 = yValue1 + amount;

  bool hasYValue1() => _yValue1 != null;

  // "yValue2" field.
  int? _yValue2;
  int get yValue2 => _yValue2 ?? 0;
  set yValue2(int? val) => _yValue2 = val;

  void incrementYValue2(int amount) => yValue2 = yValue2 + amount;

  bool hasYValue2() => _yValue2 != null;

  static ChartDataStruct fromMap(Map<String, dynamic> data) => ChartDataStruct(
        xTitle: data['xTitle'] as String?,
        yValue1: castToType<int>(data['yValue1']),
        yValue2: castToType<int>(data['yValue2']),
      );

  static ChartDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xTitle': _xTitle,
        'yValue1': _yValue1,
        'yValue2': _yValue2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xTitle': serializeParam(
          _xTitle,
          ParamType.String,
        ),
        'yValue1': serializeParam(
          _yValue1,
          ParamType.int,
        ),
        'yValue2': serializeParam(
          _yValue2,
          ParamType.int,
        ),
      }.withoutNulls;

  static ChartDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartDataStruct(
        xTitle: deserializeParam(
          data['xTitle'],
          ParamType.String,
          false,
        ),
        yValue1: deserializeParam(
          data['yValue1'],
          ParamType.int,
          false,
        ),
        yValue2: deserializeParam(
          data['yValue2'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ChartDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataStruct &&
        xTitle == other.xTitle &&
        yValue1 == other.yValue1 &&
        yValue2 == other.yValue2;
  }

  @override
  int get hashCode => const ListEquality().hash([xTitle, yValue1, yValue2]);
}

ChartDataStruct createChartDataStruct({
  String? xTitle,
  int? yValue1,
  int? yValue2,
}) =>
    ChartDataStruct(
      xTitle: xTitle,
      yValue1: yValue1,
      yValue2: yValue2,
    );
