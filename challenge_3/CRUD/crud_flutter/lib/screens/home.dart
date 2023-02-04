import 'package:flutter/material.dart';

import 'addStudent.dart';
import 'listStudent.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const ListStudent(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const AddStudent())),
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
