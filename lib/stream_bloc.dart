import 'package:flutter/material.dart';
import 'package:naufal_uas/stream_bloc_color.dart';

class BlocStream extends StatefulWidget {
  @override
  _BlocStreamState createState() => _BlocStreamState();
}

class _BlocStreamState extends State<BlocStream> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Stream",),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            backgroundColor: Colors.purpleAccent,
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_greenAcccent);
            },
          ),
          SizedBox(
            height: 50,
            width: 32,
          ),
          FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.blueAccent,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_redAccent);
              }),
        ],
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.stateStream,
          initialData: Colors.yellowAccent,
          builder: (context, snapshot) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              color: snapshot.data,
              width: 200,
              height: 200,
            );
          },
        ),
      ),
    );
  }
}