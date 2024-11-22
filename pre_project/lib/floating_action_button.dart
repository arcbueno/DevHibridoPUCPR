import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

/// Me gere um floatingactionbutton em flutter em estilo futurisco.
/// Ele vai servir para adicionar um novo equipamento na nave espacial.
/// Ele também tem botões próximos para cadastro de novos tripulates
/// e outras configurações
class SpaceFab extends StatelessWidget {
  const SpaceFab({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: Colors.grey[200],
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      spacing: 10,
      spaceBetweenChildren: 10,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
          label: 'Adicionar Equipamento',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () => print('Adicionar Equipamento'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.person_add),
          backgroundColor: Colors.orange,
          label: 'Cadastrar Tripulante',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () => print('Cadastrar Tripulante'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.settings),
          backgroundColor: Colors.red,
          label: 'Configurações',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () => print('Configurações'),
        ),
      ],
    );
  }
}
