import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "\$60.98",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TAX (10.0%)",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "\$6.10",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(80)),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Text(
                            "Checkout",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "\$67.08",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Cart",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.grey],
          )),
          child: Column(children: [
            ListTile(
              title: Text(
                "Shopping Cart",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Verify your quantity and click checkout"),
              leading: Icon(
                Icons.shopping_cart,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Calas'),
                    subtitle: Text('\$15.00'),
                    leading: Container(
                      child: Image.asset('assets/pasta.jpg'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    trailing: Column(
                      children: [
                        Icon(Icons.add_circle_outline),
                        Text("1.0"),
                        Icon(Icons.remove_circle_outline),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('Salad'),
                    subtitle: Text('\$22.99'),
                    leading: Container(
                      child: Image.asset('assets/salad.jpg'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    trailing: Column(
                      children: [
                        Icon(Icons.add_circle_outline),
                        Text("1.0"),
                        Icon(Icons.remove_circle_outline),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
