import 'package:flutter/material.dart';
import 'package:pass_data_basic_rout/Activities/Home.dart';
import 'package:pass_data_basic_rout/RoutingModel/Routing.dart';

main(List<String> args) {
  runApp(App()) ;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      routes: route ,
    );
  }
}