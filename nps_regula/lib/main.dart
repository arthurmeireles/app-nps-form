import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _opcaoSelecionada = 0;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _opcaoSelecionada,
            onTap: (opcao) {
              print('clicou $opcao');

              setState(() {
                _opcaoSelecionada = opcao;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Página Inicial',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Biblioteca',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
              ),
            ]
        ),
        appBar: AppBar(
          title: Text('Acessa e Confia')
        ),
        body: IndexedStack(
          index: _opcaoSelecionada,
          children: <Widget> [
            HomePage(),
            ListaFormularios(),
            Perfil()
          ]
        )
      )
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Batata doce'),
      ),
    );
  }
}

class ListaFormularios extends StatelessWidget {
  const ListaFormularios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Lista de pesquisas NPS'),
      ),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Perfil da criatura que ta usando'),
      ),
    );
  }
}