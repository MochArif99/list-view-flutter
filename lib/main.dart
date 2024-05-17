import 'package:flutter/material.dart';
import 'package:listview/pages/home_page.dart';
import 'package:listview/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=> HomePage(),
    },
  ));
}
