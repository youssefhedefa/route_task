import 'package:flutter/material.dart';
import 'package:route_task/core/helpers/color_helper.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'What do you search for?',
          hintStyle:
          TextStyle(color: AppColorHelper.fontColor.withOpacity(0.4)),
          enabledBorder: borderBuilder(),
          focusedBorder: borderBuilder(),
          prefixIcon: const Icon(Icons.search,
              size: 34, color: AppColorHelper.iconsColor),
        ),
      ),
    );
  }

  OutlineInputBorder borderBuilder() => const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32)),
    borderSide: BorderSide(
      color: AppColorHelper.iconsColor,
      width: 1.4,
    ),
  );
}
