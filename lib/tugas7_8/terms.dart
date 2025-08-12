import 'package:flutter/material.dart';

import 'main_page.dart';

class Tugas7 extends StatefulWidget {
  const Tugas7({super.key});

  @override
  State<Tugas7> createState() => _Tugas7Flutter();
}

class _Tugas7Flutter extends State<Tugas7> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: isCheckSwitch ? Colors.white : Colors.black,
        ),
        backgroundColor: isCheckSwitch ? Colors.black : Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: isCheckSwitch ? Colors.white : Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          "Terms & Condition",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: isCheckSwitch ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: isCheckSwitch ? Colors.black : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Clause 1",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dui lectus, dapibus non urna et, tincidunt bibendum justo. Integer mattis felis et ipsum congue sodales. Phasellus ullamcorper eros lacus, ac dapibus erat placerat eu.",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Clause 2",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dui lectus, dapibus non urna et, tincidunt bibendum justo. Integer mattis felis et ipsum congue sodales. Phasellus ullamcorper eros lacus, ac dapibus erat placerat eu.",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Clause 3",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dui lectus, dapibus non urna et, tincidunt bibendum justo. Integer mattis felis et ipsum congue sodales. Phasellus ullamcorper eros lacus, ac dapibus erat placerat eu.",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: Colors.blueAccent,
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                ),
                Text(
                  isCheck == true
                      ? "Lanjutkan pendaftaran diperbolehkan"
                      : "Anda belum bisa melanjutkan",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: isCheck ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            Text(
              "Saya menyetujui semua persyaratan yang berlaku.",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(40, 66, 177, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Agree and Continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
