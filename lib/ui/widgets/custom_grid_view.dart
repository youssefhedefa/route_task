import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/logic/cubit/view_product_cubit.dart';
import 'package:route_task/logic/cubit/view_product_states.dart';
import 'package:route_task/ui/widgets/custom_product_card.dart';


class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewProductCubit,ViewProductStates>(
      builder: (context,state) {
        if(state is ViewProductSuccessState){
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
            ),
            itemCount: state.products.length,
            itemBuilder: (context, index) => CustomProductCard(
              productPrice: state.products[index].price,
              productName: state.products[index].title,
              productDiscription: state.products[index].description,
              productPriceBeforeDiscount: state.products[index].priceBeforeDiscount,
              productRating: state.products[index].rating,
              image: state.products[index].image,
            ),
          );
        }
        if(state is ViewProductErrorState){
          return Center(
            child: Text(state.error),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }
}
