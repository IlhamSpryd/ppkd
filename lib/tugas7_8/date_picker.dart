import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePicker();
}

class _DatePicker extends State<DatePicker> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isCheckSwitch ? Colors.black : Colors.white,
      // bottomNavigationBar: Navbar(currentIndex: currentIndex, onTap: onTap),
      appBar: AppBar(
        title: Text(
          "Date Picker",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: isCheckSwitch ? Colors.white : Colors.black,
          ),
        ),
        backgroundColor: isCheckSwitch ? Colors.black : Colors.white,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Pilih Tanggal Lahir",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: isCheckSwitch ? Colors.white : Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isCheckSwitch ? Colors.white : Colors.black,
                foregroundColor: isCheckSwitch ? Colors.black : Colors.white,
              ),
              onPressed: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2500),
                );
                if (pickedDate != null && pickedDate != selectedDate) {
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }
              },
              child: const Text("Pilih Tanggal"),
            ),
            const SizedBox(height: 20),
            if (selectedDate != null)
              Text(
                "Tanggal Lahir : ${DateFormat('dd MMMM yyyy').format(selectedDate!)}",
                style: TextStyle(
                  color: isCheckSwitch ? Colors.white : Colors.black,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
