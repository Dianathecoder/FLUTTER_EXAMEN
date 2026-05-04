import 'package:flutter/material.dart';
import 'package:flutter_examen/screens/home_screens.dart';
import 'detail_page.dart';

class ListPage extends StatelessWidget {
  final String name;
  const ListPage({super.key, required this.name});

  // Cambia a lista vacía [] para probar el estado vacío
  static const List<ListPage> items = [
    ListPage(name: 'Tarea A'),
    ListPage(name: 'Tarea B'),
    ListPage(name: 'Tarea C'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de Tareas')),
      body: items.isEmpty
          ? const Center(
              child: Text(
                'No hay tareas disponibles',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.separated(
              itemCount: items.length,
              separatorBuilder: (context, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('$index')),
                  title: Text('Elemento $index: ${items[index]}'),
                  trailing: const Icon(Icons.chevron_right),
                  //se pulsa y se navega a la pagina principal
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
