import 'package:flutter/material.dart';

class AbandonedUsers extends StatefulWidget {
  const AbandonedUsers({super.key});

  @override
  State<AbandonedUsers> createState() => _AbandonedUsersState();
}

class _AbandonedUsersState extends State<AbandonedUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('abandoned users'),
        ],
      ),
    );
  }
}
