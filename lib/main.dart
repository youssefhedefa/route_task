import 'package:flutter/material.dart';
import 'package:route_task/core/di/di.dart';
import 'package:route_task/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(const MyApp());
}
