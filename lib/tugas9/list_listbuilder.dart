import 'package:flutter/material.dart';
import 'package:ppkd/tugas9/model/produk_model.dart';

class Day14ListOnListViewBuilder extends StatefulWidget {
  const Day14ListOnListViewBuilder({super.key});

  @override
  State<Day14ListOnListViewBuilder> createState() =>
      _Day14ListOnListViewBuilderState();
}

class _Day14ListOnListViewBuilderState
    extends State<Day14ListOnListViewBuilder> {
  final List<String> mainanAnak = [
    "Puzzle",
    "Rubik",
    "Lego",
    "Bola",
    "Kelereng",
    "Mobil-Mobilan",
    "Boneka",
    "Layang-Layang",
    "Kembang Api",
    "Robot",
  ];

  final List<Map<String, dynamic>> produk = [
    {"nama": "Puzzle", "price": 50000, "icon": Icons.toys},
    {"nama": "Rubik", "price": 60000, "icon": Icons.square},
    {"nama": "Lego", "price": 70000, "icon": Icons.brush},
    {"nama": "Bola", "price": 80000, "icon": Icons.sports_soccer},
    {"nama": "Kelereng", "price": 20000, "icon": Icons.circle},
    {"nama": "Mobil-Mobilan", "price": 90000, "icon": Icons.directions_car},
    {"nama": "Boneka", "price": 75000, "icon": Icons.pets},
    {"nama": "Layang-Layang", "price": 30000, "icon": Icons.air},
    {"nama": "Kembang Api", "price": 15000, "icon": Icons.people},
    {"nama": "Robot", "price": 120000, "icon": Icons.android},
  ];

  final List<ProdukModel> produkModel = [
    ProdukModel(nama: "Puzzle", price: 50000, icon: Colors.blue),
    ProdukModel(nama: "Rubik", price: 60000, icon: Colors.green),
    ProdukModel(nama: "Lego", price: 70000, icon: Colors.red),
    ProdukModel(nama: "Bola", price: 80000, icon: Colors.orange),
    ProdukModel(nama: "Kelereng", price: 20000, icon: Colors.purple),
    ProdukModel(nama: "Mobil-Mobilan", price: 90000, icon: Colors.yellow),
    ProdukModel(nama: "Boneka", price: 75000, icon: Colors.pink),
    ProdukModel(nama: "Layang-Layang", price: 30000, icon: Colors.cyan),
    ProdukModel(nama: "Kembang Api", price: 15000, icon: Colors.brown),
    ProdukModel(nama: "Robot", price: 120000, icon: Colors.teal),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isDarkmode = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: mainanAnak.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  mainanAnak[index],
                  style: TextStyle(
                    color: isDarkmode ? Colors.white : Colors.black,
                  ),
                ),
                subtitle: Text(
                  "Item ke-${index + 1}",
                  style: TextStyle(
                    color: isDarkmode ? Colors.white : Colors.black,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundColor: isDarkmode ? Colors.black : Colors.white,
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      color: isDarkmode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),

          Divider(),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produk.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProduk = produk[index];
              return ListTile(
                title: Text(
                  dataProduk["nama"],
                  style: TextStyle(
                    color: isDarkmode ? Colors.white : Colors.black,
                  ),
                ),
                subtitle: Text(dataProduk["price"].toString()),
                trailing: CircleAvatar(
                  backgroundColor: isDarkmode ? Colors.black : Colors.white,
                  child: Icon(
                    dataProduk["icon"],
                    color: isDarkmode ? Colors.white : Colors.black,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundColor: isDarkmode ? Colors.black : Colors.white,
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      color: isDarkmode ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),

          Divider(),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produkModel.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProdukModel = produkModel[index];
              return ListTile(
                title: Text(dataProdukModel.nama),
                subtitle: Text(dataProdukModel.price.toString()),
                trailing: ElevatedButton.icon(
                  icon: Icon(Icons.shopping_cart),
                  label: Text('Beli'),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("${index + 1}"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
