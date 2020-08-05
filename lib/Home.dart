import 'package:flutter/material.dart';
import 'package:youtube/screens/Biblioteca.dart';
import 'package:youtube/screens/EmAlta.dart';
import 'package:youtube/screens/Inicio.dart';
import 'package:youtube/screens/Inscricao.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
     Inicio(),
     EmAlta(),
     Inscricao(),
     Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/youtube.png",
          width: 98,
          height: 22,
        ),

        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.videocam),
            onPressed: (){
             print("acao: videocam");
            },
      ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("acao: search");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print("acao: account");
            },
          )

        ],

      ),
      body: telas [_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap:(indice){
          setState(() {
                _indiceAtual = indice;
          });
        } ,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red ,
          items: [
            BottomNavigationBarItem(
             // backgroundColor: Colors.orange,
              title: Text("Início"),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
            // backgroundColor: Colors.red,
                title: Text("Em alta"),
                icon: Icon(Icons.whatshot)
            ),
            BottomNavigationBarItem(
             // backgroundColor: Colors.blue,
                title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)
            ),
            BottomNavigationBarItem(
             //   backgroundColor: Colors.blue,
                title: Text("Biblioteca"),
                icon: Icon(Icons.folder)
            ),


          ]
      ),
    );
  }
}

