import 'package:flutter/widgets.dart';
import 'package:hanabito/presentation/molecules/image_widget.dart';

class SwitchableIconTextWidget extends StatelessWidget {
  /// アイコン付きテキストかテキストを表示するウィジェット
  const SwitchableIconTextWidget({
    super.key,
    required this.text,
    required this.iconHeight,
    required this.iconWidth,
    this.textStyle,
    this.iconImagePath = '',
  });

  /// テキスト
  final String text;

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
    return iconImagePath.isNotEmpty
        ? Row(
            children: [
              ImageWidget(
                image: iconImagePath,
                height: iconHeight,
                width: iconWidth,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: textStyle,
                  ),
                ),
              ),
            ],
          )
        : Center(
            child: Text(
              text,
              style: textStyle,
            ),
          );
  }
}
