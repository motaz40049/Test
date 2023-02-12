import 'package:crat_app/checkOut.dart';
import 'package:crat_app/homeCrat.dart';
import 'package:crat_app/model/crat.dart';
import 'package:crat_app/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) {
      return crat();
    }),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(fontFamily: 'GentiumPlus'),
      initialRoute: 'crathome',
      routes: {
        'crathome' : (context) => const crathome(),
        'checkout' : (context) => const checkout(),
        'test' : (context) => const test()
      },
    ),
  ));
}
