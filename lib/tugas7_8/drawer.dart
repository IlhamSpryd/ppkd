import 'package:flutter/material.dart';

import 'date_picker.dart';
import 'drop_down.dart';
import 'timepicker.dart';

class CustomDrawer extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onDarkModeChanged;

  const CustomDrawer({
    super.key,
    required this.isDarkMode,
    required this.onDarkModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final Color bgColor =
        isDarkMode
            ? const Color.fromARGB(255, 20, 20, 20)
            : const Color.fromRGBO(89, 160, 200, 1);

    final Color iconColor = isDarkMode ? Colors.white : Colors.black;

    return Drawer(
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
                Switch(
                  value: isDarkMode,
                  onChanged: (value) => onDarkModeChanged(value),
                ),
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
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DatePicker()),
              );
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
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TimePicker()),
              );
            },
          ),
        ],
      ),
    );
  }
}
