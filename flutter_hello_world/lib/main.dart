import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _age = 28;

  String randomText = "";
  MaterialColor randomColor = Colors.green;
  void _upAge() {
    setState(() {
      _age ++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Wow, agora sim"),
        ),
       body: SizedBox(
          height: 210,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('1625 Main Street',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Text('My City, CA 99984'),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Colors.blue[500],
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('(408) 555-1212',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.blue[500],
                  ),
                ),
                ListTile(
                  title: Text('idade: $_age'),
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.blue[500],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _upAge();
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,

        )

    );

  }
}