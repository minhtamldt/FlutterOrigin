import 'package:auto_route/auto_route.dart';
import 'package:flutter_origin/config/auto_router/app_router.dart';

extension AppRouterExtension on StackRouter {
  Future<T?> newPushNamed<T extends Object?>(
      String path, Map<String, dynamic> paramters) {
    var fullPath = "$path?${AppRouter.argumentsKeys}=$paramters";
    return pushNamed(fullPath);
  }

  Map<String, dynamic> accessParamters() {
    Map<String, dynamic> rawMapData =
        current.queryParams.rawMap[AppRouter.argumentsKeys];
    return rawMapData;
  }
}
