import 'package:hanabito/features/event/domain/event_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_interface.g.dart';

@riverpod
EventInterface eventInterface(EventInterfaceRef ref) {
  throw UnimplementedError();
}

/// イベント情報に関するインターフェースを定義
abstract interface class EventInterface {
  /// イベント情報一覧を取得する
  Future<List<EventModel>> fetch();
}
