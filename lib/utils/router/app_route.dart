/// アプリ内のルートを定義するクラス
enum AppRoute {
  /// ルートの種類
  /// ホーム画面
  home('/home'),

  /// イベント情報画面
  event('/home/event'),
  ;

  /// アプリ内のルートを定義するクラス
  const AppRoute(this.path);

  /// ルートのパス
  final String path;
}
