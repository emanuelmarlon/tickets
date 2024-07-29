// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AtividadesMesStruct extends BaseStruct {
  AtividadesMesStruct({
    int? month,
    int? year,
    int? itemCount,
  })  : _month = month,
        _year = year,
        _itemCount = itemCount;

  // "month" field.
  int? _month;
  int get month => _month ?? 0;
  set month(int? val) => _month = val;

  void incrementMonth(int amount) => month = month + amount;

  bool hasMonth() => _month != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  // "item_count" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  set itemCount(int? val) => _itemCount = val;

  void incrementItemCount(int amount) => itemCount = itemCount + amount;

  bool hasItemCount() => _itemCount != null;

  static AtividadesMesStruct fromMap(Map<String, dynamic> data) =>
      AtividadesMesStruct(
        month: castToType<int>(data['month']),
        year: castToType<int>(data['year']),
        itemCount: castToType<int>(data['item_count']),
      );

  static AtividadesMesStruct? maybeFromMap(dynamic data) => data is Map
      ? AtividadesMesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'month': _month,
        'year': _year,
        'item_count': _itemCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'month': serializeParam(
          _month,
          ParamType.int,
        ),
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'item_count': serializeParam(
          _itemCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static AtividadesMesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AtividadesMesStruct(
        month: deserializeParam(
          data['month'],
          ParamType.int,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        itemCount: deserializeParam(
          data['item_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AtividadesMesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AtividadesMesStruct &&
        month == other.month &&
        year == other.year &&
        itemCount == other.itemCount;
  }

  @override
  int get hashCode => const ListEquality().hash([month, year, itemCount]);
}

AtividadesMesStruct createAtividadesMesStruct({
  int? month,
  int? year,
  int? itemCount,
}) =>
    AtividadesMesStruct(
      month: month,
      year: year,
      itemCount: itemCount,
    );
