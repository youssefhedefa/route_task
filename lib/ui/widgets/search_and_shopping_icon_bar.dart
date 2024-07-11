import 'package:flutter/material.dart';
import 'package:route_task/core/helpers/color_helper.dart';

class SearchAndShoppingIconBar extends StatelessWidget {
  const SearchAndShoppingIconBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SearchBar(),
        const SizedBox(width: 10),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined,
                size: 34, color: AppColorHelper.iconsColor)),
      ],
    );
  }
}
