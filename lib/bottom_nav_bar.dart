import 'package:appbar/tabs/chat_tab.dart';
import 'package:appbar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List<Widget> listNavPages=[
    ChatsTabPage(),
    StatusTabPage()
  ];
  int mSelectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav"),
      ),
      body:listNavPages[mSelectedIndex] ,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey.shade300,
        indicatorColor: Colors.orange.shade300,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: mSelectedIndex,
        onDestinationSelected: (index){
          mSelectedIndex=index;
          setState(() {

          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          NavigationDestination(
              icon: Icon(Icons.account_circle),
              label: "Profile"
          )
        ],
      ),
    );
  }
}
