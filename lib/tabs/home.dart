import 'package:besoft_go_for_taxi/utils/hex.dart';
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
    return Container(
      padding: const EdgeInsets.only(top: 65.0),
      color: Colors.blueAccent,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Apple Color Emoji',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.supervised_user_circle,
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            size: 50,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Text('4',
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Colors.white,
                                    )),
                                Text('/9',
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Color.fromRGBO(255, 255, 255, 0.6),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            child: Container(
                              width: 70,
                              color: Colors.white,
                              child: Material(
                                child: InkWell(
                                  onTap: () {
                                    print('+');
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: HexColor('3F763E'),
                                    size: 40,
                                  ),
                                ),
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            child: Container(
                                width: 70,
                                color: Colors.white,
                                child: Material(
                                  child: InkWell(
                                    onTap: () {
                                      print('-');
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: HexColor('3F763E'),
                                      size: 40,
                                    ),
                                  ),
                                  color: Colors.transparent,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Clients()),
        ],
      ),
    );
  }
}

class Clients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Пассажиры',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    )),
              )),
          ClientItem(),
          ClientItem(),
          ClientItem(),
        ],
      ),
    );
  }
}

class ClientItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: Container(
              margin: const EdgeInsets.all(14.0),
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
                    child: Text("0777 777 777", style: TextStyle(fontSize: 25)),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 40,
                      height: 40,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.delete,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
