import 'package:flutter/material.dart';
import 'package:glmpay_admin_desktop_application/All Features/Features Pages/dashboard.dart';
import 'package:glmpay_admin_desktop_application/All%20Features/Features%20Pages/abandonedUsers.dart';
import 'package:glmpay_admin_desktop_application/All%20Features/Features%20Pages/knowledgeBase.dart';
import 'package:glmpay_admin_desktop_application/All%20Features/Features%20Pages/pushNotifications.dart';
import 'package:glmpay_admin_desktop_application/All%20Features/Features%20Pages/transactions.dart';
import 'package:glmpay_admin_desktop_application/All%20Features/Features%20Pages/wallet.dart';

import 'Features Pages/dashboard.dart';
import 'Features Pages/userProfile.dart';

class AllFeatures extends StatefulWidget {
  const AllFeatures({super.key});

  @override
  State<AllFeatures> createState() => _AllFeaturesState();
}

class UserPanel {
  String title;
  String image;
  bool active;
  UserPanel({required this.title, required this.image, required this.active});
}

List<UserPanel> userPanel = [
  UserPanel(
      title: 'Dashboard',
      image: 'images/iconImages/dashboard.png',
      active: true),
  UserPanel(
      title: 'User Profile',
      image: 'images/iconImages/userProfile.png',
      active: false),
  UserPanel(
      title: 'Transactions',
      image: 'images/iconImages/transactions.png',
      active: false),
  UserPanel(
      title: 'Wallet', image: 'images/iconImages/wallet.png', active: false),
  UserPanel(
      title: 'Abandoned Users',
      image: 'images/iconImages/abandonedUsers.png',
      active: false),
  UserPanel(
      title: 'Push Notifications',
      image: 'images/iconImages/pushNotifications.png',
      active: false),
  UserPanel(
      title: 'Knowledge Base',
      image: 'images/iconImages/knowledgeBase.png',
      active: false),
];
int activeIndex = 0;

class _AllFeaturesState extends State<AllFeatures> {
  Widget returnWidget() {
    switch (activeIndex) {
      case 0:
        {
          return Dashboard();
        }
      case 1:
        {
          return UserProfile();
        }
      case 2:
        {
          return Transactions();
        }
      case 3:
        {
          return Wallet();
        }
      case 4:
        {
          return AbandonedUsers();
        }
      case 5:
        {
          return PushNotifications();
        }
      case 6:
        {
          return KnowledgeBase();
        }
    }
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Row(
                children: [
                  Image.asset(
                    'images/logo.png',
                    height: 50,
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 40,
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      onChanged: (value) {},
                      initialValue: 'Elon Musk',
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 0,
                            color: Color.fromARGB(255, 202, 202, 202),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 0,
                            // color: Color.fromARGB(255, 225, 225, 225),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),

                  // search button
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xff36344D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                      onPressed: () {},
                      child: const Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ), // search buton
                  const Spacer(),
                  // Profile photo and name
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      'https://www.shutterstock.com/image-photo/young-confident-handsome-man-full-260nw-1416442523.jpg',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Admin\'s\nName',
                    style: TextStyle(
                      color: Color(0xff36344D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ], // Top Bar
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'User Panel',
                        style: TextStyle(
                          color: Color(0xff7E7D82),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.4,
                        width: MediaQuery.of(context).size.width / 5,
                        child: ListView.builder(
                          itemCount: userPanel.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  color: activeIndex == index
                                      ? Color(0xff2FB4B4)
                                      : null,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        activeIndex = index;
                                      });
                                    },
                                    child: ListTile(
                                      title: Text(
                                        userPanel[index].title,
                                        style: const TextStyle(
                                            color: Color(0xff36344D),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      leading: Image.asset(
                                        userPanel[index].image,
                                        height: 30,
                                        color: Color(0xff36344D),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              children: const [
                                Icon(Icons.logout),
                                SizedBox(
                                  width: 7,
                                ),
                                Text('Logout'),
                              ],
                            ),
                          ),
                        ),
                      )
                    ], // Features Navigation
                  ),
                  SingleChildScrollView(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width / 4.2,
                        child: returnWidget(),
                      ),
                    ),
                  ),
                ], // body of content
              ),
            ], // Main body
          ),
        ),
      ),
    );
  }
}
