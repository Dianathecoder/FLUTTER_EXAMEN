import 'package:flutter/material.dart';
import 'package:flutter_examen/routes.dart';
import 'package:flutter_examen/screens/list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('aset/image'),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_box),
                  Column(
                    children: [
                      Text(
                        'Texto 1',
                        style: TextStyle(fontSize: 30, color: Colors.amber),
                      ),
                      Text(
                        'Texto 2',
                        style: TextStyle(fontSize: 50, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListPage(name: name))),
                  child: Text('Listado de Tareas'))
            ],
          ),
        ),
      ),
    );
  }
}
