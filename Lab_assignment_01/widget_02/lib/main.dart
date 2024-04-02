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
              subtitle: Text("Verify"),
              leading: Icon(
                Icons.shopping_cart,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Calas'),
                    subtitle: Text('This is subtitle 1'),
                    leading: Container(
                      child: Image.asset('assets/pasta.jpg'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    title: Text('Calas'),
                    subtitle: Text('This is subtitle 1'),
                    leading: Container(
                      child: Image.asset('assets/pasta.jpg'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    title: Text('Salad'),
                    subtitle: Text('This is subtitle 1'),
                    leading: Container(
                      child: Image.asset('assets/salad.jpg'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    trailing: Icon(Icons.arrow_right),
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
