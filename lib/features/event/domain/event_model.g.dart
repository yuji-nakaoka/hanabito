// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EventModelImpl',
      json,
      ($checkedConvert) {
        final val = _$EventModelImpl(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          type: $checkedConvert(
              'type',
              (v) =>
                  $enumDecodeNullable(_$EventTypeEnumMap, v) ?? EventType.none),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$EventTypeEnumMap[instance.type]!,
    };

const _$EventTypeEnumMap = {
  EventType.none: 'none',
  EventType.guide: 'guide',
  EventType.column: 'column',
};
