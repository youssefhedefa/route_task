
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_task/core/networking/api_manager/api_services.dart';
import 'package:route_task/data/repo_impl/get_products_repo.dart';
import 'package:route_task/domain/use_case/get_products_use_case.dart';
import 'package:route_task/logic/cubit/view_product_cubit.dart';

var getIt = GetIt.instance;

Future<void> setUp() async {
  final dio = Dio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<ProductsRepoImpl>(() => ProductsRepoImpl(apiServices: getIt()));
  getIt.registerLazySingleton<GetProductsUseCase>(() => GetProductsUseCase(productRepository: getIt()));
  getIt.registerLazySingleton<ViewProductCubit>(() => ViewProductCubit(productsRepo: getIt(), getProductsUseCase: getIt()));

}