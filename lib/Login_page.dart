import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:online_chatting_network_calling/callPage.dart';
import 'ChatPage.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeInUp(duration: Duration(seconds: 1), child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeInUp(duration: Duration(milliseconds: 1200), child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeInUp(duration: Duration(milliseconds: 1300), child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeInUp(duration: Duration(milliseconds: 1600), child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Start the app", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[

                      SizedBox(height: 100,),
                      FadeInUp(duration: Duration(milliseconds: 1900), child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),
                        child: Center(
                          child:  Text("Click Any One", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      )),
                      SizedBox(height: 40,),
                      // FadeInUp(duration: Duration(milliseconds: 2000), child: Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                      SizedBox(height: 30,),
                      Center(
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(onTap: (){
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ChatPage())
                                );
                              });
                            },child: FadeInUp(duration: Duration(milliseconds: 2000),child: Icon(Icons.message,size: 50,color: Colors.green,))),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>calls()));
                              },
                                child: FadeInUp(duration: Duration(milliseconds: 2000),child: Icon(Icons.call,size: 50,color: Colors.blue,)))
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}