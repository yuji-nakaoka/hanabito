import 'package:flutter/material.dart';
import 'package:hanabito/presentation/foundations/app_style.dart';

class SelectBackgroundWidget extends StatelessWidget {
  /// 背景を色か画像で設定できるウィジェット
  const SelectBackgroundWidget({
    super.key,
    required this.child,
    required this.backgroundColor,
    this.backgroundImagePath = '',
  });

  /// 背景画像のパス
  final String backgroundImagePath;

  /// 背景色
  final Color backgroundColor;

  /// 子ウィジェット
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            // 画像が設定されている場合は背景画像、なければ設定色
            color: backgroundImagePath.isEmpty
                ? backgroundColor
                : Colors.transparent,
            image: backgroundImagePath.isNotEmpty
                ? DecorationImage(
                    image: AssetImage(backgroundImagePath),
                    fit: BoxFit.cover,
                  )
                : null,
            borderRadius: BorderRadius.circular(AppStyle.ten),
          ),
          child: child,
        ),
      ],
    );
  }
}
