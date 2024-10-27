import 'package:hanabito/features/event/domain/event_model.dart';

/// イベント情報に関するインターフェースを定義
abstract interface class EventRepository {
  /// イベント情報一覧を取得する
  Future<List<EventModel>> fetch();
}
