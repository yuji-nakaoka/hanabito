import 'package:flutter/material.dart';
import 'package:hanabito/presentation/foundations/app_style.dart';
import 'package:hanabito/presentation/molecules/select_background_widget.dart';
import 'package:hanabito/presentation/molecules/switchable_icon_text_widget.dart';

/// メニューウィジェット
class CustomMenuWidget extends StatelessWidget {
  /// メニューウィジェット
  const CustomMenuWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    this.textStyle,
    this.iconImagePath = '',
    this.backgroundImagePath = '',
    this.iconHeight = AppStyle.oneHundred,
    this.iconWidth = AppStyle.oneHundred,
  });

  /// タップ時のコールバック
  final VoidCallback onPressed;

  /// テキスト
  final String text;

  /// 背景画像のパス
  final String backgroundImagePath;

  /// 背景色
  final Color backgroundColor;

  /// アイコンのパス
  final String iconImagePath;

  /// テキストの色
  final TextStyle? textStyle;

  /// アイコンの高さ
  final double iconHeight;

  /// アイコンの幅
  final double iconWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectBackgroundWidget(
          backgroundColor: backgroundColor,
          backgroundImagePath: backgroundImagePath,
          child: InkWell(
            onTap: onPressed,
            child: SwitchableIconTextWidget(
              text: text,
              textStyle: textStyle,
              iconImagePath: iconImagePath,
              iconHeight: iconHeight,
              iconWidth: iconWidth,
            ),
          ),
        ),
      ],
    );
  }
}
