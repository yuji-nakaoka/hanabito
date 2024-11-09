# hanabito(花火人)

花火大会をより楽しく見るためのアプリ

このアプリは、花火をただ見るだけではなく、

その背後にある物語や花火師たちの情熱を知ることで、花火をより深く楽しむために開発します。

詳細は以下のページを参照してください

https://www.notion.so/hanabito-d69cf2505ee34e609450beb426928ce8

## 環境

| 言語・フレームワーク・パッケージ | バージョン          |
| -------------------------------- | ------------------- |
| flutter                          | .fvmrc ファイル参照 |
| Dart                             | 3.5.1               |
| Android SDK                      | 32.1.0-rc1          |
| Java                             | 17.0.10             |
| Android Studio                   | 2023.3              |
| VS Code                          | 1.93.1              |
| CocoaPods                        | 1.15.2              |

## 使用技術一覧

- Flutter
- Dart

## ビルドコマンド

現段階では環境分けはしていないため、

ビルドコマンドは以下の通り。

```
flutter run
```

## ディレクトリ構成

詳細は以下のページを参照してください

https://www.notion.so/c0babaf3716c43f1900f637d0674e9d7

<!-- Treeコマンドを使ってディレクトリ構成を記載 -->
<!-- ❯ tree -a -I "node_modules|.next|.git|.pytest_cache|static" -L 2 -->

```
├── assets
│   ├── font　アプリの文字形式
│   ├── icon　アイコン画像
│   └── image ヘッダーや背景その他の画像
├── lib
│   ├── app.dart
│   ├── features　業務ロジック以下を定義する
│   ├── main.dart
│   ├── presentation　UI/UX について定義する
│   └── utils　その他共通ロジックの定義

```
