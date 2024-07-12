import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/di/di.dart';
import 'package:route_task/logic/cubit/view_product_cubit.dart';
import 'package:route_task/ui/products_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ViewProductCubit>()..viewProducts(),
      child: MaterialApp(
        title: 'Route Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProductsScreen(),
      ),
    );
  }
}
