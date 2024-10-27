import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hanabito/presentation/foundations/material.dart';
import 'package:hanabito/presentation/organisms/custom_menu.dart';
import 'package:hanabito/presentation/screens/home/common/home_menu_item.dart';
import 'package:hanabito/presentation/screens/home/common/home_style.dart';
import 'package:hanabito/utils/router/app_route.dart';

/// ホーム画面のメニュー部分
class HomeMenuPart extends ConsumerWidget {
  const HomeMenuPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView(
        children: [
          // メニューアイテム
          ...HomeMenuItem.values.map((item) {
            return Column(
              children: [
                CustomMenuWidget(
                  backgroundColor: context.onPrimary,
                  iconImagePath: item.menuImage,
                  onPressed: () {
                    log('onPressed: ${item.menuText}');

                    context.pushNamed(AppRoute.event.name);
                  },
                  text: item.menuText,
                  textStyle: context.titleLarge?.copyWith(
                    color: context.shadow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(HomeStyle.ten),
              ],
            );
          }),
        ],
      ),
    );
  }
}
