import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Ejercicio5 extends StatefulWidget {
  const Ejercicio5({Key? key}) : super(key: key);

  @override
  State<Ejercicio5> createState() => _Ejercicio5State();
}

class _Ejercicio5State extends State<Ejercicio5> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 5'),
      ),
      body: Column(
        children: [
          SafeArea(
            child: Center(
              child: CupertinoButton.filled(
                child: Text('Value = $_selectedValue'),
                onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (_) => SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: CupertinoPicker(
                      backgroundColor: Colors.white,
                      itemExtent: 30,
                      scrollController: FixedExtentScrollController(
                        initialItem: 1,
                      ),
                      children: const [
                        Text('0'),
                        Text('1'),
                        Text('2'),
                      ],
                      onSelectedItemChanged: (int value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
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
