import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanabito/presentation/foundations/material.dart';
import 'package:hanabito/presentation/organisms/custom_app_bar.dart';
import 'package:hanabito/presentation/screens/event/common/event_style.dart';
import 'package:hanabito/presentation/screens/event/common/event_text.dart';

/// イベント情報画面
class EventScreen extends StatelessWidget {
  /// イベント情報画面
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          children: [
            const Gap(EventStyle.five),

            /// 上段タイトル
            Text(
              EventText.tittle,
              style: context.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.onPrimary,
              ),
            ),
            const Gap(EventStyle.fifteen),

            /// メニューパート
          ],
        ),
      ),
    );
  }
}
