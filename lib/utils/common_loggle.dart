import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roggle/roggle.dart';

part 'common_loggle.g.dart';

@riverpod

/// ログの設定を提供する
Roggle commonRoggle(CommonRoggleRef ref) {
  return Roggle();
}
