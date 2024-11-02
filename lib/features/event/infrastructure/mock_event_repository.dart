import 'package:hanabito/features/event/domain/event_interface.dart';
import 'package:hanabito/features/event/domain/event_model.dart';
import 'package:hanabito/features/event/event_type.dart';

/// イベント情報のアプリ内仮データ
class MockEventRepository implements EventInterface {
  @override
  Future<List<EventModel>> fetch() {
    return Future.value([
      const EventModel(
        id: '1',
        title: '今年のトレンド花火は？',
      ),
      const EventModel(
        id: '2',
        title: '花火作り体験イベント',
        type: EventType.column,
      ),
      const EventModel(
        id: '3',
        title: '花火の採点基準って？',
        type: EventType.guide,
      ),
    ]);
  }
}
