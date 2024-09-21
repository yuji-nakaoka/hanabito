import 'package:flutter/material.dart';
import 'package:hanabito/presentation/foundations/app_style.dart';
import 'package:hanabito/presentation/foundations/app_text.dart';
import 'package:hanabito/presentation/foundations/image_path.dart';
import 'package:hanabito/presentation/molecules/image_widget.dart';

/// 共通のAppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// 共通のAppBar
  const CustomAppBar({
    this.toolbarHeight = AppStyle.fifty,
    super.key,
  });

  final double toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: const Stack(
        children: [
          Positioned(
            bottom: AppStyle.minusOneHundredFifty,
            right: AppStyle.minusOneHundredFifty,
            child: ImageWidget(
              image: ImagePath.header,
              height: AppStyle.sixHundred,
            ),
          ),
        ],
      ),
      title: const Text(AppText.hanabito),
      toolbarHeight: toolbarHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
