import 'package:flutter/material.dart';
import 'package:route_task/core/helpers/color_helper.dart';
import 'package:route_task/core/helpers/text_style_helper.dart';
import 'package:route_task/ui/widgets/image_viewer.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: AppColorHelper.iconsColor.withOpacity(0.4), width: 1.4),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomImageViewer(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyleHelper.font18Reg,
                ),
                Text(
                  'Product Price',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyleHelper.font18Reg,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

