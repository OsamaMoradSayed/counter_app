import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 1;
  //1- constructor
  //2- init state
  //3- build

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  setState(() {
                    count --;
                  });

                },
                child: Text(
                  'MINUS',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$count',
                style: TextStyle(
                  fontSize: 95.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    count ++;
                  });

                },
                child: Text(
                  'PLUS',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
