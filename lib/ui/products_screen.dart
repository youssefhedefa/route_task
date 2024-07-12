import 'package:flutter/material.dart';
import 'package:route_task/ui/widgets/custom_grid_view.dart';
import 'package:route_task/ui/widgets/search_and_shopping_icon_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/images/route_logo.png',
          ),
          surfaceTintColor: Colors.white,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SearchAndShoppingIconBar(),
              SizedBox(
                height: 18,
              ),
              Expanded(child: CustomGridView()),
            ],
          ),
        ),
    );
  }
}
