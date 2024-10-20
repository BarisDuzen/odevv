import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Firmalar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ), // Simge
                  Expanded(
                    child: Center(
                      child: Text(
                        "Sağlık",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2.0,
                  color: Colors.black,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), // Arama simgesi
                  labelText: "Firma Ara...",
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  border: InputBorder.none, // Kenar çizgilerini kaldır
                ),
              ),
            ),
            Container(
              width: 300,
                height: 50,
                child: Text("İstediğiniz Firmada İndirim Yakalama Fırsatı...",style: TextStyle(color: Colors.grey[500],
                fontSize: 16),)
            ),
            CustomWidget(),
            CustomWidget(),
            CustomWidget(),
            CustomWidget()
          ],
        ),
      ),
    );
  }
}



class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Row(
              children: [
                Icon(Icons.business),
                SizedBox(width: 8),
                Text('Firma Adı Uzun Firma Adı'),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.blue,
              child: Center(
                child: Text(
                  '%10',
                  style: TextStyle(color: Colors.white),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


