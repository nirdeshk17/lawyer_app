import 'package:flutter/material.dart';

import 'case_quotation.dart';
import 'case_request.dart';
import 'causequatation.dart';
import 'mycases.dart';
class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
            backgroundColor: Colors.white,
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              const UserAccountsDrawerHeader(
                decoration:BoxDecoration(
                  color:  Color(0xFF8A2387),
                ) ,
                accountName: Text('John Doe'),
                accountEmail: Text('johndoe@example.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmAuJ-VUZtJlodvHQ2VjSlBc3icTxjZ_gMvw&usqp=CAU'),
                  backgroundColor:  Color(0xFF8A2387),

                ),
              ),
              ListTile(
                leading: const Icon(Icons.request_page),
                title: const Text('Case Request'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CaseRequestsSentPage()));
                  // Navigate to the profile screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer_outlined),
                title: const Text("Case Quotation"),
                onTap: () {
                  // Navigate to the home screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CauseQuatation()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.library_books),
                title: const Text('My Cases'),
                onTap: () {
                  // Navigate to the my cases screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyCauses()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RequestSendingPage()));
                  // Navigate to the messages screen
                },
              ),
              const ListTile(
                leading: Icon(Icons.login_outlined),
                title: Text("LogOut"),
              )
            ])));
  }
}
