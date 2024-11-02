import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanabito/app.dart';
import 'package:hanabito/features/event/domain/event_interface.dart';
import 'package:hanabito/features/event/infrastructure/mock_event_repository.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        /// イベント情報のデータを提供
        eventInterfaceProvider.overrideWithValue(
          MockEventRepository(),
        ),
      ],
      child: const App(),
    ),
  );
}
