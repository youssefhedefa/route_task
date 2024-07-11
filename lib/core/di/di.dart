
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_task/core/networking/api_manager/api_services.dart';

var getIt = GetIt.instance;

Future<void> setUp() async {
  final dio = Dio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
}