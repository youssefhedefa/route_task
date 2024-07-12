import 'package:dartz/dartz.dart';
import 'package:route_task/core/networking/api_manager/api_services.dart';
import 'package:route_task/domain/product_entity.dart';

class GetProductsRepo {
  final ApiServices apiServices;

  GetProductsRepo({required this.apiServices});

  Future<Either<List<ProductEntity>, String>> getProducts() async {
    try {
      final productsModel = await apiServices.getProducts();
      final products = productsModel.products ?? [];
      List<ProductEntity> productsEntity = products
          .map(
            (e) => ProductEntity(
              id: e.id ?? 0,
              title: e.title ?? "N/A",
              description: e.description ?? "N/A",
              image: e.images?.first ?? "N/A",
              price: e.price.toString(),
              priceBeforeDiscount: (e.price! +
                      (e.price! * e.discountPercentage!.toDouble() / 100)).toStringAsFixed(2),
              rating: e.rating.toString(),
            ),
          )
          .toList();
      return Left(productsEntity);
    } catch (e) {
      return Right(e.toString());
    }
  }
}
