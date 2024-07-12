import 'package:bloc/bloc.dart';
import 'package:route_task/data/repo/get_products_repo.dart';
import 'package:route_task/logic/cubit/view_product_states.dart';

class ViewProductCubit extends Cubit<ViewProductStates> {
  final GetProductsRepo productsRepo;

  ViewProductCubit({required this.productsRepo}) : super(ViewProductInitialState());

  void viewProducts() async {
    emit(ViewProductLoadingState());
    final result = await productsRepo.getProducts();
    result.fold(
      (products) => emit(ViewProductSuccessState(products: products)),
      (error) => emit(ViewProductErrorState(error)),
    );
  }
}