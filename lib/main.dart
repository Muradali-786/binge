import 'package:flutter/material.dart';
import 'utils/route/route_name.dart';
import 'utils/route/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Binge',//title of the app,



      initialRoute: RouteName.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

