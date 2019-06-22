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
                clickedAddDreamButton('New Vision', Icons.code);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.add),
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                return data[index];
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

class ListDisplay extends StatefulWidget {
  @override
  State createState() => new DynamicList();
}

class DynamicList extends State<ListDisplay> {
  List<String> litems = [];
  final TextEditingController eCtrl = new TextEditingController();
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Dynamic Demo"),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              controller: eCtrl,
              onSubmitted: (text) {
                litems.add(text);
                eCtrl.clear();
                setState(() {});
              },
            ),
            new Expanded(
                child: new ListView.builder(
                    itemCount: litems.length,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return new Text(litems[Index]);
                    }))
          ],
        ));
  }
}
