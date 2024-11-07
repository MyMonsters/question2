// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(),
      );
    },
    DetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPageRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
        RouteConfig(
          DetailPageRoute.name,
          path: '/detail-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [DetailPage]
class DetailPageRoute extends PageRouteInfo<DetailPageRouteArgs> {
  DetailPageRoute({
    Key? key,
    required int id,
  }) : super(
          DetailPageRoute.name,
          path: '/detail-page',
          args: DetailPageRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'DetailPageRoute';
}

class DetailPageRouteArgs {
  const DetailPageRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailPageRouteArgs{key: $key, id: $id}';
  }
}
