import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil Saya",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 81, 128),
        actions: [Icon(Icons.menu_sharp, color: Colors.white)],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 350),
          Text(
            "ILHAM SEPRIYADI",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10, width: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: const Color.fromARGB(255, 192, 47, 36),
              ),
              SizedBox(width: 5, height: 30),
              Text(
                'Jakarta, Indonesia',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 50, width: 10),
          Column(
            children: [
              Text(
                "Ilham Sepriyadi adalah seorang Mahasiswa yang berambisi menjadi seorang yang ahli pada bidang Artificial Intelligence dan Robotics.",
                style: TextStyle(fontSize: 15, fontFamily: ""),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
