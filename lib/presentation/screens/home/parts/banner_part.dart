import 'package:flutter/material.dart';
import 'package:hanabito/presentation/foundations/image_path.dart';
import 'package:hanabito/presentation/molecules/image_widget.dart';
import 'package:hanabito/presentation/screens/home/common/home_style.dart';

/// ホーム画面のバナー部分
class HomeBannerPart extends StatelessWidget {
  const HomeBannerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: HomeStyle.bannerHeight,
      child: Stack(
        children: [
          Positioned(
            top: HomeStyle.zero,
            left: HomeStyle.zero,
            right: HomeStyle.zero,
            child: ImageWidget(
              image: ImagePath.fireWorkBridge,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
