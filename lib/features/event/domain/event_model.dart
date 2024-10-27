import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanabito/features/event/event_type.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory EventModel({
    @Default('') String id,
    @Default('') String title,
    @Default(EventType.none) EventType type,
  }) = _EventModel;

  // json形式で受け取るためのコードを生成するために記述
  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}
