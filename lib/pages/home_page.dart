import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num = 10;

  final x = const TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 171, 92, 207));
  final primaryColor = const Color.fromARGB(255, 100, 56, 121);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Operaciones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Resultado',
              style: x,
            ),
            Text(
              num.toString(),
              style: x,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                onPressed: () {
                  num += 2;
                  setState(() {});
                },
                color: const Color.fromARGB(199, 170, 90, 157),
                child: const Text('+2'),
              ),
              const SizedBox(
                width: 11.0,
              ),
              MaterialButton(
                onPressed: () {
                  num -= 2;
                  setState(() {});
                },
                color: const Color.fromARGB(199, 170, 90, 157),
                child: const Text('-2'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                onPressed: () {
                  num *= 2;
                  setState(() {});
                },
                color: const Color.fromARGB(199, 170, 90, 157),
                child: const Text('*2'),
              ),
              const SizedBox(
                width: 11.0,
              ),
              MaterialButton(
                onPressed: () {
                  num /= 2;
                  setState(() {});
                },
                color: const Color.fromARGB(199, 170, 90, 157),
                child: const Text('/2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
