import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // const Xylophone({Key? key}) : super(key: key);
  void Playsound(int no)  {
    final player = AudioPlayer();
     player.play(DeviceFileSource('assets/note$no.wav')); // will immediately start playing
  }
  Expanded buildkey({required int soundno,required Color color}){

    return Expanded(child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            color,
          )),
      onPressed: () {
        Playsound(soundno);
      },
      child: Text(''),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Colors.black,
        appBar: AppBar(
          title: Text('XYLOPHONE'),
          backgroundColor: Colors.cyan,
        ),
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //       Colors.orangeAccent,
              //     )),
              //     onPressed: () {
              //       Playsound(1);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //           Colors.redAccent,
              //         )),
              //     onPressed: () {
              //       Playsound(2);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //           Colors.yellowAccent,
              //         )),
              //     onPressed: () {
              //       Playsound(3);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //           Colors.green,
              //         )),
              //     onPressed: () {
              //       Playsound(4);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //           Colors.blue,
              //         )),
              //     onPressed: () {
              //       Playsound(5);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //           Colors.pink,
              //         )),
              //     onPressed: () {
              //       Playsound(6);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll<Color>(
              //           Colors.purple,
              //         )),
              //     onPressed: () {
              //       Playsound(7);
              //     },
              //     child: Text(''),
              //   ),
              // ),
              buildkey(soundno : 1,color: Colors.red),
              buildkey(soundno : 2,color: Colors.orangeAccent),
              buildkey(soundno : 3,color: Colors.yellow),
              buildkey(soundno : 4,color: Colors.green),
              buildkey(soundno : 5,color: Colors.purple),
              buildkey(soundno : 6,color: Colors.pink),
              buildkey(soundno : 7,color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
