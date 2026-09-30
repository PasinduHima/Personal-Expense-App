import 'package:expence_app/models/expence.dart';
import 'package:flutter/material.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
  // Expense list
  final List<ExpenceModel> _expenceList = [
    ExpenceModel(
      amount: 12.5,
      date: DateTime.now(),
      title: "Carrot",
      category: Category.food,
    ),
    ExpenceModel(
      amount: 20,
      date: DateTime.now(),
      title: "Bag",
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Expence Master",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 116, 6, 150),
        elevation: 10,
        actions: [
          Container(
            color: Colors.yellow,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(child:  ListView.builder(
            itemCount: _expenceList.length,
            itemBuilder: (context, index) {
              return Text(_expenceList[index].title);
        
            },
          ),
      )],
      ),
    );
  }
}
