import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));

}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _frase = "";

  List <String> _frases = [
    "Faça alguém feliz hoje. Pequenos gestos fazem toda a diferença.",
    "A mala que você carrega na vida precisa deixar coisas pelo caminho para abrir espaço para novas.",
    "No lugar de sofrer tanto, busque refletir sobre o que te machuca.",
    "Você não precisa viver tudo num dia. Tenha calma.",
    "Não deixe de sonhar. Há uma vida inteira para tornar seus sonhos possíveis.",
    "As melhores mudanças da vida costumam chegar depois dos maiores vendavais.",
    "Perder-se é uma das formas mais gostosas de reencontrar-se numa melhor versão.",
    "A vida é feita de pequenos prazeres. Que tal te dar um hoje?",
    "Mudar é normal. Não precisamos viver a vida toda do mesmo jeito!",
    "Preocupe-se apenas com o que você pode solucionar.",
  ];

  void _gerarFrase(){
    setState(() {
      _frase = _frases[Random().nextInt(_frases.length)];
    });   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases do dia",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
        backgroundColor: Color(0xff6A5ACD),
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
            child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget> [
              Image.asset("assets/images/logo.png"),
              Text(
                "Clique abaixo para gerar uma frase!",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),

                RaisedButton(  
                  child: Text(
                      "Nova Frase",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  color: Color(0xff6A5ACD),
                  onPressed: _gerarFrase,    
                ),
              Text(
                _frase,
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.black,
                  fontSize: 20
                )
              )
            ],
          ),
        )
      ),

      backgroundColor: Colors.white,

      bottomNavigationBar: BottomAppBar(),

    );
  }
}