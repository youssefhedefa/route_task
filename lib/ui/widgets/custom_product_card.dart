import 'package:flutter/material.dart';
import 'package:route_task/core/helpers/color_helper.dart';
import 'package:route_task/core/helpers/text_style_helper.dart';
import 'package:route_task/ui/widgets/image_viewer.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.productPrice, required this.productPriceBeforeDiscount, required this.productRating, required this.image, required this.productName, required this.productDiscription});

  final String productName;
  final String productPrice;
  final String productDiscription;
  final String productPriceBeforeDiscount;
  final String productRating;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: AppColorHelper.iconsColor.withOpacity(0.4), width: 1.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomImageViewer(
              image: image,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyleHelper.font18Reg,
                  ),
                  Text(
                    productDiscription,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyleHelper.font18Reg,
                  ),
                  Row(
                    children: [
                      Text(
                        'EGP$productPrice',
                        style: AppTextStyleHelper.font18Reg,
                      ),
                      const Spacer(),
                      Text(
                        '${productPriceBeforeDiscount}EGP',
                        style: AppTextStyleHelper.font18RegWithIconColor.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Reviews($productRating)', style: AppTextStyleHelper.font18Reg),
                      const Icon(
                        Icons.star,
                        color: AppColorHelper.startIconColor,
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: AppColorHelper.plusIconColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                          weight: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
