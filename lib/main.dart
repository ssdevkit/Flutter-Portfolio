import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter_Portfolio'),
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
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.5,
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
                  child: Column(
                    children: [
                      Container(margin: EdgeInsets.all(20),
                          child: Text(
                              'John Doe',
                              style: GoogleFonts.caveat(
                                textStyle: TextStyle(
                                    fontSize: Theme.of(context).textTheme.headline3!.fontSize
                                ),
                              )
                          )
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              'John.Doe@gmail.com',
                              style: GoogleFonts.caveat(
                                textStyle: TextStyle(
                                    fontSize: Theme.of(context).textTheme.headline6!.fontSize
                                ),
                              )
                          )
                      ),
                      Expanded(child: Text('')),
                      Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber
                        ),
                        child: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          alignment: Alignment.topCenter,
                          child: Image(
                            image: AssetImage('photo/profile.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
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
                            Container(margin: EdgeInsets.all(20),
                                child: Text(
                                    'John Doe',
                                    style: GoogleFonts.caveat(
                                      textStyle: TextStyle(
                                          fontSize: Theme.of(context).textTheme.headline3!.fontSize
                                      ),
                                    )
                                )
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Text(
                                    'John.Doe@gmail.com',
                                    style: GoogleFonts.caveat(
                                      textStyle: TextStyle(
                                          fontSize: Theme.of(context).textTheme.headline4!.fontSize
                                      ),
                                    )
                                )
                            ),
                            Container(
                            //  width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.5,
                              margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Transform(
                            transform: Matrix4.rotationY(math.pi),
                            alignment: Alignment.bottomCenter,
                            child: Image(
                              image: AssetImage('photo/profile.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
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
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.height * 0.5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(margin: EdgeInsets.all(20),
                                    child: Text(
                                        'John Doe',
                                        style: GoogleFonts.caveat(
                                          textStyle: TextStyle(
                                              fontSize: Theme.of(context).textTheme.headline3!.fontSize
                                          ),
                                        )
                                    )
                                ),
                                Expanded(child: Text(''),),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                      child: Text(
                                          'John.Doe@gmail.com',
                                          style: GoogleFonts.caveat(
                                            textStyle: TextStyle(
                                                fontSize: Theme.of(context).textTheme.headline6!.fontSize
                                            ),
                                          )
                                      )
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Transform(
                            transform: Matrix4.rotationY(math.pi),
                            alignment: Alignment.center,
                            child: Image(
                              width: MediaQuery.of(context).size.width * 0.4,
                              image: AssetImage('photo/profile.png'),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              ),
            );
          } ,
        )
    );
  }
}


