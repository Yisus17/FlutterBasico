import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Test"),
          ),
          body: Stack(
            children: <Widget>[
              backgroundImage(),
              textContainer(),

            ],
          ),

        ) //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  Widget backgroundImage() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: Image(
          image: AssetImage('assets/img/avatar_background.jpg'),
          fit: BoxFit.cover,
        ));
  }

  Widget textContainer() {
    return Center(
      child: Container(
        width: double.infinity,
        height: 40.0,
        color: Colors.black.withOpacity(0.5),
        child: Text(
          "Aang > Korra",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 24),

        ),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
