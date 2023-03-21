import 'dart:developer';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketbookingapp/screens/home_screen.dart';
import 'package:ticketbookingapp/screens/profile_screen.dart';
import 'package:ticketbookingapp/screens/search_screen.dart';
import 'package:ticketbookingapp/screens/ticketscreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _WidgetOptions=<Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
       _selectedIndex=index;
    });
     
    log('${_selectedIndex}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My Tickets'),
      // ),
      body: Center(
        child: _WidgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap:_onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF526480),

          items: [
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: "Home"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Ticket"),
             BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_people_regular),
             activeIcon: Icon(FluentSystemIcons.ic_fluent_people_filled),
             label: "Profile")
          ]),
    );
  }
}