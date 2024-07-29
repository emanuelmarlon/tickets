// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketMesStruct extends BaseStruct {
  TicketMesStruct({
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

  static TicketMesStruct fromMap(Map<String, dynamic> data) => TicketMesStruct(
        month: castToType<int>(data['month']),
        year: castToType<int>(data['year']),
        itemCount: castToType<int>(data['item_count']),
      );

  static TicketMesStruct? maybeFromMap(dynamic data) => data is Map
      ? TicketMesStruct.fromMap(data.cast<String, dynamic>())
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

  static TicketMesStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketMesStruct(
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
  String toString() => 'TicketMesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketMesStruct &&
        month == other.month &&
        year == other.year &&
        itemCount == other.itemCount;
  }

  @override
  int get hashCode => const ListEquality().hash([month, year, itemCount]);
}

TicketMesStruct createTicketMesStruct({
  int? month,
  int? year,
  int? itemCount,
}) =>
    TicketMesStruct(
      month: month,
      year: year,
      itemCount: itemCount,
    );
