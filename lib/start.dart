import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Profile Lengkap",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: [Icon(Icons.menu_sharp, color: Colors.white)],

        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              "ILHAM SEPRIYADI",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat-BoldItalic',
              ),
            ),
            SizedBox(height: 3),
            const Text(
              "AI & Robotics Enthusiast",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Monserrat',
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  //Email
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Icon(
                          Icons.mail,
                          color: const Color.fromARGB(255, 214, 62, 62),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "ilhamsepriyadi8@gmail.com",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 15,
                            fontFamily: 'Monserrat-Regular',
                            color: Colors.white70,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Phone
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Icon(
                          Icons.phone,
                          color: const Color.fromARGB(255, 41, 219, 133),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "+62 857-1896-5973",
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Monserrat-Regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
