import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hanabito/features/event/application/event_controller.dart';
import 'package:hanabito/presentation/foundations/image_path.dart';
import 'package:hanabito/presentation/foundations/material.dart';
import 'package:hanabito/presentation/organisms/custom_menu.dart';
import 'package:hanabito/presentation/screens/event/common/event_style.dart';

/// イベント情報一覧
class EventMenuPart extends ConsumerWidget {
  const EventMenuPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(eventFutureProvider);
    return Expanded(
      child: event.when(
        data: (data) {
          return ListView(
            children: [
              /// メニューアイテム
              ...data.map((item) {
                return Column(
                  children: [
                    CustomMenuWidget(
                      backgroundColor: context.onPrimary,
                      backgroundImagePath: ImagePath.bordeauxMoon,
                      onPressed: () {
                        log('onPressed: ${item.title}');
                      },
                      text: item.title,
                      textStyle: context.titleLarge?.copyWith(
                        color: context.onPrimary,
                        fontWeight: FontWeight.bold,
                        height: EventStyle.fourPointFive,
                      ),
                    ),
                    const Gap(EventStyle.twenty),
                  ],
                );
              }),
            ],
          );
        },
        error: (err, stack) => Center(
          child: Text(
            '$err',
            style: TextStyle(color: context.error),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
