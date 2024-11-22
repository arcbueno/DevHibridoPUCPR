import 'package:flutter/material.dart';

class EquipmentList extends StatelessWidget {
  final List<Map<String, String>> equipment = [
    {'name': 'Propulsor', 'status': 'Operacional'},
    {'name': 'Escudo Defletor', 'status': 'Ativado'},
    {'name': 'Sistema de Navegação', 'status': 'Operacional'},
    {'name': 'Armas de Laser', 'status': 'Desativado'},
    {'name': 'Sistema de Vida', 'status': 'Operacional'},
  ];

  EquipmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: equipment.length,
      itemBuilder: (context, index) {
        return EquipmentItem(
          name: equipment[index]['name']!,
          status: equipment[index]['status']!,
        );
      },
    );
  }
}

class EquipmentItem extends StatelessWidget {
  final String name;
  final String status;

  const EquipmentItem({super.key, required this.name, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10.0,
      child: ListTile(
        contentPadding: const EdgeInsets.all(15.0),
        title: Text(
          name,
          style: const TextStyle(
            fontFamily: 'Futuristic',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          status,
          style: TextStyle(
            fontFamily: 'Futuristic',
            fontSize: 16.0,
            color: Colors.grey[700],
          ),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5.0,
          ),
          child: const Text(
            'Detalhes',
            style: TextStyle(
              fontFamily: 'Futuristic',
              fontSize: 14.0,
            ),
          ),
        ),
      ),
    );
  }
}
