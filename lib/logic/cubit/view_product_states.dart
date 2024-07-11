import 'package:route_task/domain/product_entity.dart';

abstract class ViewProductStates {}

class ViewProductInitialState extends ViewProductStates {}

class ViewProductLoadingState extends ViewProductStates {}

class ViewProductSuccessState extends ViewProductStates {
  final List<ProductEntity> products;

  ViewProductSuccessState({required this.products});
}

class ViewProductErrorState extends ViewProductStates {
  final String error;

  ViewProductErrorState(this.error);
}
