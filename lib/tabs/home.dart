import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeTabPage(),
    );
  }
}

class HomeTabPage extends StatefulWidget {
  HomeTabPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  int _counter = 0;
  int initialIndex = 0;
  final isSelected = <bool>[false, false, false];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<bool> _isSelected = [false, false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                  height: 120,
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  color: Colors.lightGreenAccent[700],
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('Apple Color Emoji',
                              style: TextStyle(
                                fontSize: 25,
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 6,
                              child: Row(
                                children: [
                                  Icon(Icons.people_outline_rounded, size: 50, ),
                                  Text('4/9', style: TextStyle(fontSize: 50)),
                                ],
                              )),
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  child: Container(
                                    width: 70,
                                    color: Colors.white,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  child: Container(
                                    width: 70,
                                    color: Colors.white,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )

                    ],
                  )),
            ),
            Flexible(
              flex: 10,
              child: Clients(),
            )
          ],
        ),
      ),
    );
  }
}

class Clients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[700],
      body: Container(
        padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Пассажиры',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: new InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.call,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text("0777 777 777",
                            style: TextStyle(fontSize: 25)),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.delete,
                            size: 30, color: Colors.red), // icon-1
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: new InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.call,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text("0777 777 777",
                            style: TextStyle(fontSize: 25)),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.delete,
                            size: 30, color: Colors.red), // icon-1
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: new InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.call,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text("0777 777 777",
                            style: TextStyle(fontSize: 25)),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.delete,
                            size: 30, color: Colors.red), // icon-1
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
