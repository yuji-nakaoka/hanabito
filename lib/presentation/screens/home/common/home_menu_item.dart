import 'package:hanabito/presentation/foundations/icon_path.dart';
import 'package:hanabito/presentation/screens/home/common/home_text.dart';

/// ホーム画面のメニューアイテム
enum HomeMenuItem {
  event,
  search,
  know,
  buy,
  apply,
  ;

  /// メニューアイテムのパスを取得する
  String get menuImage => switch (this) {
        HomeMenuItem.event => IconPath.event,
        HomeMenuItem.search => IconPath.hanabi,
        HomeMenuItem.know => IconPath.fireworksMaster,
        HomeMenuItem.buy => IconPath.ticket,
        HomeMenuItem.apply => IconPath.photo,
      };

  /// メニューアイテムのテキストを取得する
  String get menuText => switch (this) {
        HomeMenuItem.event => HomeText.event,
        HomeMenuItem.search => HomeText.search,
        HomeMenuItem.know => HomeText.know,
        HomeMenuItem.buy => HomeText.buy,
        HomeMenuItem.apply => HomeText.apply,
      };
}
