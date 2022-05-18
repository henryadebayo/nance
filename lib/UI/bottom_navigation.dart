import 'package:flutter/material.dart';
import 'package:nance/UI/history_screen.dart';
import 'package:nance/UI/home_screen.dart';
import 'package:nance/UI/other_screen.dart';
import 'package:nance/UI/wallet_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;

   final List<Widget> _pages= [
     const HomeScreen(),
     const OtherScreen(),
     const HistoryScreen(),
      WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(
          color: Colors.white
        ),
        selectedIconTheme:  const IconThemeData(
            color: Colors.amber
        ),
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.pages),
          label: "Home",
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_numbered_sharp),
          label: "History",
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
          label: "Actions",),

   BottomNavigationBarItem(
     icon: Icon(Icons.account_balance_wallet),
          label: "Wallet",
        ),
      ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
  }
}
