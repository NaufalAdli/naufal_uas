import 'package:flutter/material.dart';
import 'package:naufal_uas/ProviderMulti_page.dart';
import 'package:naufal_uas/api_page_home.dart';
import 'package:naufal_uas/stream_bloc.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(" Naufal APP (UAS) "),),

        body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text(' API '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomeApi();
                }));
              },
            ),


            RaisedButton(
              child: Text('  Provider State Management '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProvideMulti();
                }));
              },
            ),


            RaisedButton(
              child: Text(' BLoC '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return BlocStream();
                }));
              },
            ),


          ],
        ),
        ),
      ),
    );
  }
}