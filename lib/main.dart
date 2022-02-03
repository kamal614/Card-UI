import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Bussiness_Name = "Aman";
    String Bussiness_Rating = "";
    String Bussiness_review = "";
    String Contact_number = "";

    return Scaffold(
      // backgroundColor: Colors.pink[200],
      body: Center(
        child: FlipCard(
          front: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.purple,
                    blurRadius: 25.0,
                    offset: Offset(0, 10))
              ]),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        // Text("aca"),
                        Image.asset(
                          "assets/images/logo.png",
                          height: 50,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(" "),
                                Text(
                                  "${Bussiness_Name}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  "#1",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          color: Colors.black,
                          height: 40,
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 30),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                child: Column(
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 20,
                                    decoration: BoxDecoration(
                                        // color: Colors.red,
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.red.shade900,
                                              Colors.red,
                                            ]),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20))),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  width: 20,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.green,
                                            Colors.green.shade900,
                                          ]),
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20))),
                                ))
                              ],
                            ),
                            height: 40,
                            width: double.infinity,
                          ),
                        )
                      ],
                    ),
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.purple[50],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple[700],
                          maxRadius: 30,
                          child: Text(
                            "${Bussiness_Name[0]}",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 100,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.purple[700],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("jaisalmer fort"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.purple[700],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Mail.com"),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 70,
                      width: 300,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 190,
                    child: Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            size: 30,
                            color: Colors.white,
                          )),
                      width: 90,
                      height: 80,
                      decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black,
                              blurRadius: 5.0,
                            ),
                          ],
                          color: Colors.purple[700],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(130),
                              // bottomLeft: Radius.circular(100),
                              // bottomRight: Radius.circular(100),
                              topRight: Radius.circular(130))),
                    ),
                  )
                ],
              ),
            ),
          ),
          back: Container(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}
