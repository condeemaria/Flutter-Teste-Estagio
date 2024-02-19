import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class TravelDestination {
  final String name;
  final String description;

  TravelDestination(this.name, this.description);
}

class MyHomePage extends StatelessWidget {
  final List<TravelDestination> destinations = [
    TravelDestination('Maragogi', 'Conhecida como o “Caribe brasileiro” é considerado um dos melhores destinos do nordeste do Brasil. Um lugar paradisíaco, perfeito para quem deseja tirar férias, alguns dias de folga do trabalho e/ou estudos, sair da rotina e descansar na beira do mar enquanto conhece algumas das melhores praias do nosso país.'),
    TravelDestination('Porto de Galinhas', 'm dos destinos de praia mais queridos do Brasil. E motivos não faltam: a praia, que fica na cidade de Ipojuca, a 66 km de Recife, tem mar clarinho, rodeado de resorts e represado por corais, com a agradável temperatura de 28°C, um delicioso passeio de jangada leva até piscinas naturais cheias de peixinhos coloridos. No mesmo município ainda ficam praias lindas como Maracaípe, Muro Alto e Camboa: ou seja, há muito o que fazer em Porto de Galinhas. Passeio para ver cavalos-marinhos, lojinhas de artesanato e restaurantes de iguarias locais, como bolo de rolo e pratos à base de carne de sol, também fazem parte da experiência. E, uma vez lá, ainda é possível dar um pulo em lugares imperdíveis como Maragogi (no estado vizinho de Alagoas) e Praia dos Carneiros.'),
    TravelDestination('Salvador', 'As manifestações artísticas, religiosas e gastronômicas de Salvador misturam de um jeito único a herança de europeus, africanos e indígenas. O gingado da capoeira, os sabores apimentados, o sincretismo religioso e o fervo do Carnaval e da Festa de Iemanjá encantam qualquer visitante, juntamente com o icônico Pelourinho, que guarda o maior conjunto arquitetônico colonial da América Latina. Há muito o que fazer e muitos bairros interessantes para explorar na capital baiana, como o boêmio Rio Vermelho, cheio de endereços para comer e beber bem. Para completar, a cidade ainda tem belas praias urbanas e fica pertinho de destinos incríveis como Praia do Forte e Morro de São Paulo.'),
    TravelDestination('Buzios', 'Balneário mais badalado do litoral do estado do Rio de Janeiro, Búzios - ou Armação dos Búzios, seu nome oficial - é carinhosamente chamado de "Saint-Tropez brasileira", referência ao elegante balneário da Riviera Francesa. A cidade fica a apenas 165 km da capital fluminense e é conhecida pelas praias lindas, gastronomia requintada e lojas de grife. Ganhou fama internacional depois da visita da atriz francesa Brigitte Bardot em 1964.'),
    TravelDestination('Fernando de Noronha', 'A ilha principal desse arquipélago pernambucano a cerca de 530 km de Recife é um dos destinos de praia mais desejados do Brasil. Águas límpidas de um verde-esmeralda único, areias finas e claras, vegetação exuberante e o imponente Morro do Pico, com seus 321 metros, compõem um cenário para lá de paradisíaco. Para além dos cerca de 3 mil habitantes, Noronha é povoado por tartarugas, tubarões, golfinhos e outras espécies que podem ser observadas em passeios de barco, mergulhos e trilhas com diferentes níveis de dificuldade.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinos disponíveis'),
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(destinations[index].name),
            onTap: () {
              _mostrarAlertDialog(context, destinations[index]);
            },
          );
        },
      ),
    );
  }

  void _mostrarAlertDialog(BuildContext context, TravelDestination selectedDestination) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Destino Selecionado'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(selectedDestination.name),
              SizedBox(height: 8),
              Text(selectedDestination.description),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}

