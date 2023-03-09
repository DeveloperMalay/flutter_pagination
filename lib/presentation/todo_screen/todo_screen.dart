import 'package:flutter/material.dart';
import 'package:flutter_pagination/presentation/list_tile_design/list_tile_design.dart';

import '../../data/repository/todo_repository.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  void initState() {
    getTodo(12);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Todos',
        style: TextStyle(color: Colors.amber),
      )),
      backgroundColor: const Color.fromARGB(255, 244, 227, 245),
      body: Column(
        children: [
          const SizedBox(height: 30),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTileDesign.listDesign(index, 'todo$index');
              })
        ],
      ),
    );
  }
}
