import 'package:flutter/material.dart';
import 'package:ppkd/tugas7_8/drop_down.dart';

import 'date_picker.dart';
import 'timepicker.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int _selectedIndex = 0;
  bool isDarkMode = false;
  static final List<Widget> _pages = [DropDown(), DatePicker(), TimePicker()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textColor = isDarkMode ? Colors.white : Colors.black;
    // final bgColor = isDarkMode ? Colors.black : Colors.white;
    final Color bgColor =
        isDarkMode
            ? const Color.fromARGB(255, 20, 20, 20)
            : const Color.fromRGBO(89, 160, 200, 1);

    final Color iconColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(),
      drawer:
      // CustomDrawer(
      //   isDarkMode: isDarkMode,
      //   onDarkModeChanged: (value) {
      //     setState(() {
      //       isDarkMode = value;
      //     });
      //   },
      // ),
      Drawer(
        backgroundColor: bgColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: bgColor),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text(
                    isDarkMode ? "Light Mode" : "Dark Mode",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(width: 100),
                  Switch(value: isDarkMode, onChanged: (value) => (value)),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Dropdown",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: iconColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text(
                "Date Picker",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: iconColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text(
                "Time Picker",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: iconColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
