import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "User Form",
          style: TextStyle(
            fontFamily: 'Monserrat-Regular',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [Icon(Icons.help_sharp, color: Colors.white)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5, width: 10),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        iconColor: Colors.black,
                        labelText: 'Name',
                      ),
                    ),
                    const SizedBox(height: 5, width: 10),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        iconColor: Colors.blueGrey,
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 5, width: 10),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        iconColor: Colors.blueGrey,
                        labelText: 'Phone',
                      ),
                    ),
                    const SizedBox(height: 5, width: 10),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.description),
                        iconColor: Colors.blueGrey,
                        labelText: 'Description',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Text(
                "Gallery",
                style: TextStyle(
                  fontFamily: 'Monserrat-Regular',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(6, (index) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 400,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text(
                        'Kotak ${index + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monserrat-Regular',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
