import 'dart:convert';
import 'package:flutter/material.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {

  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.cyanAccent[400],
      appBar: AppBar(title: Text("Load JSON file from local"),
      ),
      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.only(top:28.0, bottom: 28.0, left: 16.0, right: 16.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue[200],
                        radius:40,
                        backgroundImage: NetworkImage((showData[index]['avatar']?.toString() ?? 'https://cdn.iconscout.com/icon/free/png-256/robot-130-530368.png')),
                      ),

                      SizedBox(width: 20), // margin
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom:3.0),
                              child: Row(
                                children: [
                                  Text(showData[index]['first_name'].toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5),
                                  Text(showData[index]['last_name'].toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Text(showData[index]['username'].toString(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text(showData[index]['status']?.toString() ?? '....Status!', style: TextStyle(color: Colors.grey.shade500)),
                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom:8.0),
                              child: Text(showData[index]['last_seen_time'].toString()),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.indigo[350],
                              radius:17,
                              child: Text(showData[index]['messages']?.toString() ?? '0', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              );
            },
            itemCount: showData.length,
            // itemCount: 5,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/mock_data.json")
        ),
      ),
    );
  }
}