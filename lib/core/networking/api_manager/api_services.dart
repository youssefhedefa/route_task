import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:route_task/core/networking/api_manager/api_const.dart';
import 'package:route_task/data/model/product_model.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ApiServices{
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET(ApiConst.products)
  Future<ProductModel> getProducts();

}