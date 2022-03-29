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
      body:
      SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            new Column(
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
                new InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text('Processing Data')),
                    );
                  },
                  child: new                 Container(
                    padding: const EdgeInsets.fromLTRB(32,10,32,0),
                    child: Row(
                      children: [
                        new Image.network("https://sites.psu.edu/siowfa16/files/2016/10/YeDYzSR-10apkm4.png",
                        width: 50,
                        height: 50,),
                        Padding(padding: EdgeInsets.only(left: 15)),
                        Expanded(
                          /*1*/
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /*2*/
                              Container(
                                padding: EdgeInsets.only(bottom: 8),
                                child:  Text(
                                  'Oeschinen Lake Campground',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'Kandersteg, Switzerland',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                        /*3*/
                        Icon(
                          Icons.star,
                          color: Colors.red[500],
                        ),
                        Text('41'),
                      ],
                    ),

                  ),
                ),
                Divider(),
                Container(
                  padding: const EdgeInsets.fromLTRB(32,10,32,0),
                  child: Row(
                    children: [
                      Expanded(
                        /*1*/
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*2*/
                            Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: const Text(
                                'Oeschinen Lake Campground',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Text(
                              'Kandersteg, Switzerland',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      /*3*/
                      Icon(
                        Icons.access_alarm,
                        color: Colors.red[800],
                      ),
                      const Text('41'),
                    ],
                  ),
                )

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
              ],)
          ],
        ),
      ),

   //   ),
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
