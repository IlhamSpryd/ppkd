import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePicker();
}

class _TimePicker extends State<TimePicker> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isCheckSwitch ? Colors.black : Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: isCheckSwitch ? Colors.white : Colors.black,
        ),
        title: Text(
          "Time Picker",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: isCheckSwitch ? Colors.white : Colors.black,
          ),
        ),
        backgroundColor: isCheckSwitch ? Colors.black : Colors.white,
        centerTitle: true,
      ),

      body: Container(
        color: isCheckSwitch ? Colors.black : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Time Picker",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),
            ElevatedButton(
              child: const Text("Pilih Jam"),
              onPressed: () async {
                final TimeOfDay? pickerTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickerTime != null) {
                  setState(() {
                    selectedTime = pickerTime;
                  });
                }
              },
            ),
            Text(
              selectedTime == null
                  ? "Belum pilih jam"
                  : "${selectedTime!.hour.toString().padLeft(2, '0')} : ${selectedTime!.minute.toString().padLeft(2, '0')}",
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
