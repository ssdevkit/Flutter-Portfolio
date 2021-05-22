import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
            ),
            child: Container(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(margin: EdgeInsets.all(20),
                                child: Text(
                                  'John Doe',
                                  style: TextStyle(
                                      fontSize: Theme.of(context).textTheme.headline4!.fontSize
                                  ),
                                )
                            ),
                            Expanded(child: Text(''),),
                            Container(margin: EdgeInsets.all(20),
                                child: Icon(Icons.person_rounded)
                            )
                          ],
                        ),
                        Expanded(
                          child: Container(
                            //width: MediaQuery.of(context).size.width * 0.8,
                            //height: MediaQuery.of(context).size.height * 0.8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(margin: EdgeInsets.all(20),child: Text('Contacts')),
                            Expanded(child: Text(''),),
                            Container(margin: EdgeInsets.all(20),child: Text('Social Media'))
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image(
                        width: MediaQuery.of(context).size.width * 0.4,
                        image: AssetImage('photo/profile.png'),
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),
    );
  }
}


