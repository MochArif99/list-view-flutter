import 'package:flutter/material.dart';
import 'package:listview/models/item.dart';
import 'package:listview/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        quantity: 100,
        description: 'Gula terbuat dari gula',
        imagePath: 'assets/abc.jpg'),
    Item(
        name: 'Salt',
        price: 2000,
        quantity: 200,
        description: 'Garam terbuat dari garam',
        imagePath: "assets/def.jpg"),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Belanja",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                var itemss = {
                  "name": item.name,
                  "price": item.price,
                  "quantity": item.quantity,
                  "description": item.description,
                  "imagePath": item.imagePath
                };
                return InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/item', arguments: item);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemPage(
                                item: item,
                              )),
                    );
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(children: [
                        Image.asset(
                          item.imagePath,
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ))
                      ]),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
