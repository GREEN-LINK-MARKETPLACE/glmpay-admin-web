import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class DashboardInfo {
  String time;
  String signUp;
  String noOfTransactions;
  String amountOfTransactions;
  String revenue;
  DashboardInfo(
      {required this.time,
      required this.signUp,
      required this.noOfTransactions,
      required this.amountOfTransactions,
      required this.revenue});
}

List<DashboardInfo> dashboardInfo = [
  DashboardInfo(
      time: 'Today\'s',
      signUp: '500',
      noOfTransactions: '200',
      amountOfTransactions: '₹400',
      revenue: '₹3000'),
  DashboardInfo(
      time: 'Yesterday\'s',
      signUp: '340',
      noOfTransactions: '640',
      amountOfTransactions: '₹4400',
      revenue: '₹4500'),
  DashboardInfo(
      time: 'This Month\'s',
      signUp: '1500',
      noOfTransactions: '143200',
      amountOfTransactions: '₹4042420',
      revenue: '₹30092830'),
  DashboardInfo(
      time: 'All time',
      signUp: '5393800',
      noOfTransactions: '2023320',
      amountOfTransactions: '₹402232320',
      revenue: '₹308902322320'),
];

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dashboardInfo.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // Container(
              //   child: ,
              // )
            ],
          );
        },
      ),
    );
  }
}
