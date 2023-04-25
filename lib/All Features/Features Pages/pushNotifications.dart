import 'package:flutter/material.dart';

class PushNotifications extends StatefulWidget {
  const PushNotifications({super.key});

  @override
  State<PushNotifications> createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('push notifications'),
        ],
      ),
    );
  }
}
