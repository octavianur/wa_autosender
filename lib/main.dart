import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wa_autosender/screens/onboarding.dart';
import 'package:wa_autosender/screens/step2registration.dart';

import 'component/cardlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Registration2(perangkat: '', telp: '',)
    );
  }
}

