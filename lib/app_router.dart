import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'detail_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
