import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {

  final number='9876543210';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text("Calls",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.more_vert,color: Colors.white,),
          )
        ],
      ),
      body:
      SafeArea(
        child: Column(
          children: [
           SizedBox(height: 20),
            Container(
              height: 400,
              child: ListView.builder(

                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Card(
                      child: Container(
                        height: 50,
                      
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.call,color: Colors.blue,),
                            Text('9876543210'),
                            ElevatedButton(
                              onPressed: () async{
                                final Uri url=Uri(
                                  scheme: 'tel',
                                  path: '9876543210',
                                );
                                if(await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }else{
                                  print('cannot launch the url');
                                }
                              }, child:Text('call',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),),
                          ],
                        ),
                      ),
                    );

                  }



              ),

            ),
          ],
        ),
      ),

    );
  }


}
