import 'package:flutter/material.dart';
import 'package:route_task/core/helpers/color_helper.dart';


class CustomImageViewer extends StatelessWidget {
  const CustomImageViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.network(
            'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite_border,
                color: AppColorHelper.iconsColor,
                size: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
