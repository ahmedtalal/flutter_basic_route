import 'package:flutter/material.dart';
import 'package:pass_data_basic_rout/Activities/Home.dart';
import 'package:pass_data_basic_rout/Activities/Second.dart';

var route = <String , WidgetBuilder>{
  Home.route : (context) => Home() ,
  Second.route : (context) => Second() ,
  
};