import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<bool> _isExpanded = [false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left_sharp,
                      size: 28,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.upload,
                          size: 28,
                        ),
                        Icon(
                          Icons.settings,
                          size: 28,
                        )
                      ],
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/car.jpg',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "1975 Porsche 911 Carrera",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_outlined,
                          size: 28,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.comment_bank_outlined,
                          size: 28,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 28,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Essential Information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "1 of 3 done",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) =>
                      setState(() => _isExpanded[index] = !isExpanded),
                  children: [
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) => const ListTile(
                        title: ListTile(
                          title: Text(
                            "Year, Make, Model, VIN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 28,
                          ),
                          subtitle: Text(
                            "Year: 1975\nMake: Porsche\nModel: 911 Carrera\nVIN: 9115400029",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      body: const ListTile(
                        title: Text('Inner info'),
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) => const ListTile(
                        title: ListTile(
                          title: Text(
                            "Description",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.grey,
                            size: 28,
                          ),
                        ),
                      ),
                      body: const ListTile(
                        title: Text('Inner info'),
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) => const ListTile(
                        title: ListTile(
                          title: Text(
                            "Photos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          leading: Icon(
                            Icons.check_circle,
                            color: Colors.grey,
                            size: 28,
                          ),
                        ),
                      ),
                      body: const ListTile(
                        title: Text('Inner info'),
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
