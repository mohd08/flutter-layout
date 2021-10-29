import 'package:flutter/material.dart';
import 'package:layout/JsonPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JsonPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Layout with Json'),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index){
//           return Card(
//                 child: Row(
//                   children: [
//                     Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
//                         child: Text(
//                           'Test 1',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
                        
//                         ),
//                         Text(
//                           'Username',
//                           style: TextStyle(
//                             color: Colors.grey[500],
//                           ),
//                         ),
//                         Text(
//                           'Description',
//                           style: TextStyle(
//                             color: Colors.grey[500],
//                           ),
//                         ),
//                     ],
//                     ),
//                     ),
//                   ],
//                 ),
                
//                 // crossAxisAlignment: CrossAxisAlignment.start,
//                 // children: <Widget>[
//                 //   Text('Name'),
//                 //   Text('Message'),
//                 // ],
//               // ),
//               );
//         },
//         itemCount: 5,
//         )
//     );

//   }
// }
