import 'package:flutter/material.dart';

import 'core/routes/route_generator_service.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      initialRoute: '/on_boarding',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
