import 'package:flutter/material.dart';
import 'package:qrcode_scanner/screens/generate_code_screen.dart';
import 'package:qrcode_scanner/screens/history_screen.dart';
import 'package:qrcode_scanner/screens/moreoptions_screen.dart';
import 'package:qrcode_scanner/screens/qrscan_screen.dart';
import 'package:qrcode_scanner/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  String barcode = "";
  int _selectedIndex = 0;

  final _pageOptions = [
    QRScanScreen(),
    HistoryScreen(),
    SettingsScreen(),
    GenerateCodeScanner(),
    MoreOptionsScreen()
  ];

  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('scanner')),
        body: _pageOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.scanner),
                label: 'Scan',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.code), label: 'Generate Code'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: 'more'),
            ]),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
