import 'package:bloc/bloc.dart';
import 'package:route_task/domain/use_case/get_products_use_case.dart';
import 'package:route_task/logic/cubit/view_product_states.dart';

class ViewProductCubit extends Cubit<ViewProductStates> {
  final GetProductsUseCase getProductsUseCase;

  ViewProductCubit({required this.getProductsUseCase}) : super(ViewProductInitialState());

  void viewProducts() async {
    emit(ViewProductLoadingState());
    final result = await getProductsUseCase.call();
    result.fold(
      (products) => emit(ViewProductSuccessState(products: products)),
      (error) => emit(ViewProductErrorState(error)),
    );
  }
}