import 'package:flutter/material.dart';
import 'package:ppkd/tugas7_8/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Aplikasi ini menampilkan navigasi bawah dengan dua tab utama, Home dan Tentang Aplikasi.',
      style: TextStyle(fontSize: 16),
    );
  }
}

class _MainPageState extends State<MainPage> {
  bool isDarkMode = false;
  int _selectedIndex = 0;

  static final List<Widget> _pages = [HomeContent(), AboutContent()];

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
      appBar:
          _selectedIndex == 1
              ? AppBar(
                title: Text(
                  _selectedIndex == 0 ? 'Home' : 'About',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: textColor),
                centerTitle: true,
              )
              : null,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _pages[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
    );
  }
}
