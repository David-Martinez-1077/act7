import 'package:flutter/material.dart';

class Ejercicio3 extends StatefulWidget {
  const Ejercicio3({Key? key}) : super(key: key);

  @override
  State<Ejercicio3> createState() => _Ejercicio3State();
}

class _Ejercicio3State extends State<Ejercicio3> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 3'),
      ),
      body: Column(
        children: [
          Center(
            child: CheckboxListTile(
              title: const Text('Checkbox List Tile'),
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              },
              activeColor: Colors.orangeAccent,
              checkColor: Colors.white,
              tileColor: Colors.black12,
              subtitle: const Text('This is a subtitle'),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            ),
          ),
          const SizedBox(height: 50),
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
        ],
      ),
    );
  }
}
