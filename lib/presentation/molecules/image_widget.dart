import 'package:flutter/material.dart';

/// 共通のバナー
class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit,
  });

  /// 画像のパス
  final String image;

  /// 高さ
  final double? height;

  /// 幅
  final double? width;

  /// 画像のフィット
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }
}
