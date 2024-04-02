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
  double _value = 50.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
          backgroundColor: Colors.purple[500],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.blue[800]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                        child: Center(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                        child: Center(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "176",
                                style: TextStyle(
                                  fontSize: 80,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            value: _value,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                        child: Center(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            const Text(
                              "60",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                              ),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor: Colors.indigo,
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 42,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor: Colors.indigo,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 42,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              const Text(
                                "23",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                ),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      backgroundColor: Colors.indigo,
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 42,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      backgroundColor: Colors.indigo,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 42,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "CALCULATE",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
