import 'package:hanabito/features/event/domain/event_interface.dart';
import 'package:hanabito/features/event/domain/event_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_controller.g.dart';

/// イベント情報の取得処理
@riverpod
Future<List<EventModel>> eventFuture(EventFutureRef ref) async {
  return ref.read(eventInterfaceProvider).fetch();
}
