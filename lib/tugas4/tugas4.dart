import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listGadget = [
      {
        'name': 'Samsung S25 Ultra',
        'price': 'Rp.20.000.000,-',
        'image': 'assets/images/samsung2.jpg',
      },
      {
        'name': 'Iphone 16 Pro Max',
        'price': 'Rp.20.000.000,-',
        'image': 'assets/images/iphone.jpg',
      },
      {
        'name': 'Xiaomi 13T 5G',
        'price': 'Rp.20.000.000,-',
        'image': 'assets/images/xiaomi.jpg',
      },
      {
        'name': 'Huawei Mate XT Ultimate Design',
        'price': 'Rp.52.999.000,-',
        'image': 'assets/images/huawei2.jpg',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        // Safe Area dipakai untuk neglindungin UI dari notch, status bar, dll.
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: Colors.deepOrange,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.blueGrey),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Handphone Terbaru",
                              hintStyle: TextStyle(color: Colors.blueGrey),
                              border: InputBorder.none,
                              isDense: true,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                const SizedBox(width: 12),
                const Icon(Icons.chat_bubble_outline, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        iconColor: Colors.black,
                        labelText: 'Name',
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        iconColor: Colors.blueGrey,
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        iconColor: Colors.blueGrey,
                        labelText: 'Phone',
                      ),
                    ),
                    const SizedBox(height: 5),
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
              const SizedBox(height: 70),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      listGadget.map((gadget) {
                        return ListTile(
                          leading: Image.asset(
                            gadget['image'],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(gadget['name']),
                          subtitle: Text(gadget['price']),
                          trailing: Icon(Icons.shopping_cart),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
