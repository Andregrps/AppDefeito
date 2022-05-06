import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Defeito',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Encontre o padrão'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: meuWidgetCentral(),
      floatingActionButton: meuWidgetBotaoAction(),
    );
  }

  Widget meuWidgetCentral() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          meuWidgetTextGrande(),
        ],
      ),
    );
  }

  Widget meuWidgetBotaoAction() {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Incrementar',
      child: const Icon(Icons.favorite),
    );
  }

  Widget meuWidgetTextGrande() {
    return Center(
      child: Expanded(
        child: Text("amigo estou aqui",
            style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
