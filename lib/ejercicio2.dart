import 'package:flutter/material.dart';

class Ejercicio2 extends StatefulWidget {
  const Ejercicio2({super.key});

  @override
  State<Ejercicio2> createState() => _AutocompleteExampleState();
}

class _AutocompleteExampleState extends State<Ejercicio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 2'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text('Busca frutas:'),
                const SizedBox(height: 10),
                Autocomplete<String>(
                  optionsBuilder: (textValue) => textValue.text.isEmpty
                      ? const Iterable<String>.empty()
                      : const ['apple', 'banana', 'melon', 'orange'].where(
                          (f) => f.contains(textValue.text.toLowerCase())),
                  onSelected: (fruit) => ScaffoldMessenger.of(context)
                      .showSnackBar(
                          SnackBar(content: Text('¡$fruit seleccionada!'))),
                )
              ],
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
