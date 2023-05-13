import 'package:flutter/material.dart';
import 'package:railway_seat/color.dart';
import 'home.dart';

class SelectedSeats extends StatefulWidget {
  const SelectedSeats({super.key});

  @override
  State<SelectedSeats> createState() => _SelectedSeatsState();
}

class _SelectedSeatsState extends State<SelectedSeats> {
  TextEditingController t3 = TextEditingController();

  int num = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Enter Number of Seats',
                style: TextStyle(fontSize: 23, color: Colors.deepPurple),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Text(
                    num.toString(),
                    style: const TextStyle(fontSize: 40.0),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (num > 1) {
                            setState(() {
                              num--;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.deepPurple),
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (num < 10) {
                            setState(() {
                              num++;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.deepPurple),
                        child: const Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    int x = cur.length;
                    if (x == 0) {
                      cVal = num;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    } else {
                      colorRefresh();
                      cVal = num;
                      Navigator.pop(context, true);
                    }
                  },
                  child: const Text('Enter'))
            ],
          ),
        ),
      ),
    );
  }
}
