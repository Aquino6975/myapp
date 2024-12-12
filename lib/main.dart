import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // Layout Superior
            Container(
              color: Colors.purpleAccent,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Programa Layout',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Espaço principal
            Expanded(
              child: Center(
                child: Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: Colors.red,
                      width: 3.0,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Meu Aplicativo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // Layout Inferior
            Container(
              color: Colors.grey.shade300,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Layout Inferior',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.purpleAccent,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
