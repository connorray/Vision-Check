import 'package:flutter/material.dart';
import 'components/home_appbar.dart';
import 'components/flatbutton_for_homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        secondaryHeaderColor: Color(0xFF15C96C),
        primaryColor: Color(0xFFFFFFFF),
        scaffoldBackgroundColor: Color(0xFFD9DFE3),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data;
  int counter = 0;

  FlatButton getData() {
    return data.last;
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Visions',
          style: TextStyle(
            color: Color(0xFF39414C),
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      bottomNavigationBar: HomeAppBar(),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              data[counter] = (Text('hello'));
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.add),
                Text('Add a Vision'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  child: data[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void clickedAddDreamButton(String text, IconData icon) {
//    FlatButtonForHomePage temp =
//        new FlatButtonForHomePage(nameOfVision: text, iconOfVision: icon);
    data.add(Text(text));
  }
}
