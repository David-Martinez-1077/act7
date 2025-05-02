import 'package:flutter/material.dart';

class Ejercicio6 extends StatefulWidget {
  const Ejercicio6({Key? key}) : super(key: key);

  @override
  State<Ejercicio6> createState() => _Ejercicio6State();
}

class _Ejercicio6State extends State<Ejercicio6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 6'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: CustomPaint(
                painter: DemoPainter(),
                child: const Text(
                  'Este es Pac-Man',
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white54,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
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

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 250,
        height: 250,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
