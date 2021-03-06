import 'package:flutter/material.dart';
import 'package:lyotrade/utils/Colors.utils.dart';

bottomNav(context) {
  var _currentRoute = ModalRoute.of(context)!.settings.name;

  return Container(
    decoration: BoxDecoration(
          
            border: Border(top: BorderSide(color: Colors.grey, width: 0.1))),
    child: BottomNavigationBar(
     
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Markets',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.currency_exchange),
          label: 'Trade',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: 'Assets',
        ),
      ],
      currentIndex: (_currentRoute == '/' || _currentRoute == '/dashboard')
          ? 0
          : _currentRoute == '/market'
              ? 1
              : _currentRoute == '/trade'
                  ? 2
                  : _currentRoute == '/assets'
                      ? 3
                      : 0,
      selectedItemColor: Colors.blue[400],
      unselectedItemColor: Colors.white60,
      
    backgroundColor: screenbackgroundcolor,
    type: BottomNavigationBarType.fixed,
    

      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/dashboard',
              (route) => false,
            );
            break;
          case 1:
            Navigator.pushNamed(
              context,
              '/market',
            );
            break;
          case 2:
            Navigator.pushNamed(
              context,
              '/trade',
            );
            break;
          case 3:
            Navigator.pushNamed(
              context,
              '/assets',
            );
            break;
          default:
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (route) => false,
            );
            break;
        }
      },
    ),
  );
}
