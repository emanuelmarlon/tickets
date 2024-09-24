// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatasStruct extends BaseStruct {
  DatasStruct({
    DateTime? data,
  }) : _data = data;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  static DatasStruct fromMap(Map<String, dynamic> data) => DatasStruct(
        data: data['data'] as DateTime?,
      );

  static DatasStruct? maybeFromMap(dynamic data) =>
      data is Map ? DatasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DatasStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatasStruct(
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DatasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatasStruct && data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

DatasStruct createDatasStruct({
  DateTime? data,
}) =>
    DatasStruct(
      data: data,
    );
