import 'package:flutter/material.dart';
import 'package:glmpay_admin_desktop_application/login/login.dart';
import 'package:glmpay_admin_desktop_application/routes.dart';

import 'All Features/all_features.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.allFeatures: (context) => AllFeatures(),
      },
    ),
  );
}
