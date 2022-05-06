import 'package:defeito/screenAmigo.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          meuWidgetCentral(),
          meuWidgetTextGrande("daniel"),
        ],
      ),
      floatingActionButton: meuWidgetBotaoAction(),
    );
  }

  Widget meuWidgetCentral() {
    List<String> listaImagens = [];
    listaImagens.add(
        "https://blog.bikeregistrada.com.br/wp-content/uploads/2017/03/conheca-as-5-melhores-cidades-para-ciclistas-pedalarem.jpeg");
    listaImagens.add(
        "https://static.todamateria.com.br/upload/ba/le/baleiaazul2-cke.jpg");
    listaImagens.add(
        "https://s2.glbimg.com/G96Su5cciuKjPVkKxlBJ9rv1Hs8=/0x0:1252x704/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/f/9/n9GqI8RwAK79dZvJJ9sA/mascara-razer.jpg");
    listaImagens.add(
        "https://s2.glbimg.com/sfRgyEXhSQxiJ-RinuDb6eJEax0=/0x0:695x390/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/i/F/BUgaY0TMS4kTSXBjiHDA/pokemon-24-anos-desenho-animado-temporada.jpg");

    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            for (var i = 0; i < listaImagens.length; i++)
              meuWidgetContainer(listaImagens[i]),
          ],
        ),
      ),
    );
  }

  Widget meuWidgetBotaoAction() {
    return FloatingActionButton(
      onPressed: () {
        //verificar se a palavra digita é igual a resposta das imagens
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScreenAmigo()),
        );
      },
      tooltip: 'Verificar',
      child: const Icon(Icons.check),
    );
  }

  meuWidgetContainer(String url) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Image.network(url, fit: BoxFit.cover),
      color: Colors.teal[100],
    );
  }
}
