import 'package:dartz/dartz.dart';
import 'package:route_task/data/repo_impl/get_products_repo.dart';
import 'package:route_task/domain/entity/product_entity.dart';

class GetProductsUseCase{
  final ProductsRepoImpl productRepository;

  GetProductsUseCase({required this.productRepository});

  Future<Either<List<ProductEntity>, String>> call() => productRepository.getProducts();

}