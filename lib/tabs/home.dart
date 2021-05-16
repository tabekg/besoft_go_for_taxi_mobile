import 'package:flutter/material.dart';

final List<String> entries = <String>[
  '0777 777 777',
  '0777 111 222',
];

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeTabPage();
  }
}

class HomeTabPage extends StatefulWidget {
  HomeTabPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  int _busyPlace = entries.length;

  //final isSelected = <bool>[false, false, false];

  void _incrementBusyPlace() {
    if (_busyPlace < 7) {
      setState(() {
        _busyPlace++;
      });
    }
  }

  void _decrementBusyPlace() {
    if (_busyPlace > entries.length) {
      setState(() {
        _busyPlace--;
      });
    }
  }

  //List<bool> _isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 65.0),
      color: Colors.blueAccent,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 18),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Asan Usonov',
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
                                Text(this._busyPlace.toString(),
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Colors.white,
                                    )),
                                Text('/7',
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
                                  splashColor: this._busyPlace == 7
                                      ? Colors.transparent
                                      : null,
                                  hoverColor: this._busyPlace == 7
                                      ? Colors.transparent
                                      : null,
                                  highlightColor: this._busyPlace == 7
                                      ? Colors.transparent
                                      : null,
                                  onTap: _incrementBusyPlace,
                                  child: Icon(
                                    Icons.add,
                                    color: this._busyPlace == 7
                                        ? Colors.grey
                                        : Colors.blueAccent,
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
                                    splashColor: this._busyPlace == entries.length
                                        ? Colors.transparent
                                        : null,
                                    hoverColor: this._busyPlace == entries.length
                                        ? Colors.transparent
                                        : null,
                                    highlightColor: this._busyPlace == entries.length
                                        ? Colors.transparent
                                        : null,
                                    onTap: _decrementBusyPlace,
                                    child: Icon(
                                      Icons.remove,
//                                      color: HexColor('3F763E'),
                                      color: this._busyPlace == entries.length
                                          ? Colors.grey
                                          : Colors.blueAccent,
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
          Expanded(child: Passengers()),
        ],
      ),
    );
  }
}

class Passengers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Expanded(
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(8, 15, 8, 10),
          itemCount: entries.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Пассажиры',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      )),
                ),
              );
            }
            return PassengerItem(
              phoneNumber: entries[index - 1],
            );
          },
        ),
      ),
    );
  }
}

class PassengerItem extends StatelessWidget {
  PassengerItem({Key key, this.phoneNumber}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    Future<void> _showDeleteConfirmAlert() async {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Подтвердите'),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Вы точно хотите удалить?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Да'),
                onPressed: () {
                  print('Confirmed');
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Нет'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Card(
      elevation: 2,
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
                  child: Text(this.phoneNumber, style: TextStyle(fontSize: 25)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 40,
                    height: 40,
                    child: InkWell(
                      onTap: _showDeleteConfirmAlert,
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
          ),
        ),
      ),
    );
  }
}
