import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text("FloatingActionButton",),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text("GFG",textScaleFactor: 3,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Floating action button pressed this many times"),
            Padding(
              padding: const EdgeInsets.all(10),
            ),
            Text("$i",textScaleFactor: 3,),
            Padding(
              padding: const EdgeInsets.all(10),
            ),
            FloatingActionButton(
              // isExtended: true,
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  i++;
                });
              },
            ),
          Padding(
            padding: const EdgeInsets.all(10),
          ),
            FloatingActionButton(
              // isExtended: true,

              child: Icon(Icons.minimize),
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  if (i>1)
                    i--;
                });
              },
            ),
/*
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  // isExtended: true,
                  child: Icon(Icons.add),
                  backgroundColor: Colors.green,
                  onPressed: () {
                    setState(() {
                      i++;
                    });
                  },
                ),
                FloatingActionButton(
                  // isExtended: true,
                  child: Icon(Icons.minimize),
                  backgroundColor: Colors.green,
                  onPressed: () {
                    setState(() {
                      i--;
                    });
                  },
                ),
              ],
            )
*/
          ],),

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                i++;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          FloatingActionButton(
            // isExtended: true,

            child: Icon(Icons.minimize),
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                if (i>1)
                  i--;
              });
            },
          ),
        ],
      ),

     /* floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            i++;
          });
        },
      ),*/
    );
  }
}
