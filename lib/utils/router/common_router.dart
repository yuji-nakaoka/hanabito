import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hanabito/presentation/screens/event/event_screen.dart';
import 'package:hanabito/presentation/screens/home/home_screen.dart';
import 'package:hanabito/utils/router/app_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'common_router.g.dart';

@riverpod

///  ルートの設定を提供する
GoRouter commonRouter(CommonRouterRef ref) {
  return GoRouter(
    ///初めに移動するページ
    initialLocation: AppRoute.home.path,

    /// ルートの定義
    routes: <RouteBase>[
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: [
          GoRoute(
            path: AppRoute.event.name,
            name: AppRoute.event.name,
            builder: (BuildContext context, GoRouterState state) {
              return const EventScreen();
            },
          ),
        ],
      ),
    ],
  );
}
