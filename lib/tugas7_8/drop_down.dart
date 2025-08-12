import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDown();
}

class _DropDown extends State<DropDown> {
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
        backgroundColor: isCheckSwitch ? Colors.black : Colors.white,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Pilih Kategori Produk",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: isCheckSwitch ? Colors.white : Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              value: dropdownSelect,
              dropdownColor: isCheckSwitch ? Colors.grey : Colors.white,
              hint: Text(
                "Pilih",
                style: TextStyle(
                  color: isCheckSwitch ? Colors.white : Colors.black,
                ),
              ),
              items:
                  ["Elektronik", "Pakaian", "Makanan", "Lainnya"]
                      .map(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color:
                                  isCheckSwitch ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      )
                      .toList(),
              onChanged: (value) {
                setState(() {
                  dropdownSelect = value;
                });
              },
            ),
            const SizedBox(height: 30),
            if (dropdownSelect != null)
              Text(
                "Anda memilih kategori : $dropdownSelect",
                style: TextStyle(
                  color: isCheckSwitch ? Colors.white : Colors.black,
                  fontFamily: 'Poppins',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
