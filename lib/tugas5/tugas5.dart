import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Tugas5()));
}

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  // State variables di set jadi false agar saat ditekan akan bernilai true
  bool showName = false;
  bool liked = false;
  bool showMore = false;
  int counter = 0;
  bool showInkText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Tugas 5',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(225, 54, 54, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. ElevatedButton
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showName = true; //Jika ditekan akan menampilkan nama
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(17, 63, 103, 1),
              ),
              child: const Text(
                'Click Me!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (showName)
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Hello My Name Is Ilham",
                  style: TextStyle(fontFamily: 'Monserrat-Regular'),
                ),
              ),

            const SizedBox(height: 50),

            // 2. IconButton
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: liked ? Color.fromRGBO(225, 54, 54, 1) : Colors.grey,
                    size: 35,
                  ),
                  onPressed: () {
                    setState(() {
                      liked = !liked;
                    });
                  },
                ),
                if (liked)
                  const Text("Liked", style: TextStyle(color: Colors.black)),
              ],
            ),

            const SizedBox(height: 50),

            // 3. TextButton
            TextButton(
              onPressed: () {
                setState(() {
                  showMore = !showMore;
                });
              },
              child: const Text(
                "See More",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            if (showMore)
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas et varius diam. Nulla lobortis et turpis eu vestibulum. Phasellus sagittis purus quis orci aliquam, eget sollicitudin augue condimentum. Donec et pretium lacus. Aenean dictum metus tortor, vel tincidunt arcu auctor sed. In hac habitasse platea dictumst. Quisque interdum nec justo non accumsan. Aenean et felis mollis, dapibus sem vitae, dignissim justo. Aenean convallis, ligula quis pellentesque accumsan, lectus arcu consequat augue, vel congue leo enim nec eros. Etiam luctus mollis condimentum. Sed convallis bibendum augue a tempus. In hac habitasse platea dictumst..",
              ),

            const SizedBox(height: 50),

            // 5. InkWell
            InkWell(
              onTap: () {
                debugPrint("Kotak disentuh");
                setState(() {
                  showInkText = !showInkText;
                });
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: Color.fromRGBO(17, 63, 103, 1),
                alignment: Alignment.center,
                child: const Text(
                  'Klik Kotak Ini',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            if (showInkText)
              const Text(
                'Teksnya muncul Bre!',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),

            const SizedBox(height: 50),

            // 6. GestureDetector
            GestureDetector(
              onTap: () => debugPrint("Ditekan sekali"),
              onDoubleTap: () => debugPrint("Ditekan dua kali"),
              onLongPress: () => debugPrint("Tahan lama"),
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Color.fromRGBO(17, 63, 103, 1),
                child: const Text(
                  'Tekan Aku',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      // 4. FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Color.fromRGBO(17, 63, 103, 1),
        child: const Icon(Icons.touch_app, color: Colors.white),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Tap: $counter', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
