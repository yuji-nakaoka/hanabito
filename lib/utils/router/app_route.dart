/// アプリ内のルートを定義するクラス
enum AppRoute {
  /// ルートの種類
  /// ホーム画面
  home('/home');

  /// アプリ内のルートを定義するクラス
  const AppRoute(this.path);

  /// ルートのパス
  final String path;
}
