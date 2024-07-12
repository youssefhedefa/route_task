import 'package:dartz/dartz.dart';
import 'package:route_task/domain/entity/product_entity.dart';

abstract class ProductRepo {
  Future<Either<List<ProductEntity>, String>> getProducts();
}