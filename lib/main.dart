import 'package:flutter/material.dart';

void main() {
  runApp(counterApp());
}

class counterApp extends StatefulWidget {
  const counterApp({super.key});

  @override
  State<counterApp> createState() => _counterAppState();
}

class _counterAppState extends State<counterApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            'Counter App',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              backgroundColor: Colors.amber,
              child: Icon(Icons.add, color: Colors.black),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (count != 0) {
                    count--;
                  } else {
                    count == 0;
                  }
                });
              },
              backgroundColor: Colors.amber,
              child: Icon(Icons.minimize_sharp, color: Colors.black),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              backgroundColor: Colors.amber,
              child: Icon(Icons.refresh, color: Colors.black,),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                '$count',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 300,),
            Text('Developed By SAUD KHAN',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,)

          ],
        ),
        
      ),
    );
  }
}
