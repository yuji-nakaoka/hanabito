import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hanabito/presentation/foundations/material.dart';
import 'package:hanabito/presentation/organisms/custom_app_bar.dart';
import 'package:hanabito/presentation/screens/home/common/home_style.dart';
import 'package:hanabito/presentation/screens/home/common/home_text.dart';
import 'package:hanabito/presentation/screens/home/parts/banner_part.dart';
import 'package:hanabito/presentation/screens/home/parts/menu_part.dart';

/// ホーム画面
class HomeScreen extends StatelessWidget {
  /// ホーム画面
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          children: [
            const Gap(HomeStyle.five),

            /// 画面上部のバナーパート
            const HomeBannerPart(),
            const Gap(HomeStyle.fifteen),

            /// 中段サブタイトル
            Text(
              HomeText.subTittle,
              style: context.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.onPrimary,
              ),
            ),
            const Gap(HomeStyle.fifteen),

            /// メニューパート
            const HomeMenuPart(),
          ],
        ),
      ),
    );
  }
}
