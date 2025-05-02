import 'package:flutter/material.dart';

class Ejercicio1 extends StatefulWidget {
  const Ejercicio1({super.key});

  @override
  State<Ejercicio1> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<Ejercicio1> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  int _itemCount = 0;

  void _addItem() {
    setState(() {
      _itemCount++;
      _listKey.currentState?.insertItem(_itemCount - 1);
    });
  }

  void _removeItem(int index) {
    setState(() {
      _listKey.currentState?.removeItem(
        index,
        (context, animation) => _buildRemovedItem(index, animation),
        duration: const Duration(milliseconds: 300),
      );
      _itemCount--;
    });
  }

  Widget _buildRemovedItem(int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.redAccent,
        child: ListTile(
          title: Text(
            'Item ${index + 1}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 1'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _itemCount,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        'Item ${index + 1}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _removeItem(index),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '/');
              },
              child: const Text(
                'Pantalla inicial',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
