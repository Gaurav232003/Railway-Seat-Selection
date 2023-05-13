import 'package:flutter/material.dart';
import 'color.dart';

class NumberOfSeats extends StatefulWidget {
  const NumberOfSeats({super.key});

  @override
  State<NumberOfSeats> createState() => _NumberOfSeatsState();
}

class _NumberOfSeatsState extends State<NumberOfSeats> {
  @override
  Widget build(BuildContext context) {
    TextEditingController t2 = TextEditingController();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            TextField(
              controller: t2,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'No. of Seats in the Train',
                  hintText: 'No. of Seats in the Train'),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  setState(() {
                    int? num = int.tryParse(t2.text);

                    if (num != null && num <= 96) {
                      n = num;
                      if (cur.isNotEmpty) {
                        int x = cur.length;
                        for (int i = 0; i < x; i++) {
                          berthCardColor[cur[0]] = Colors.deepPurple;
                          cur.remove(cur[0]);
                        }
                      }
                      Navigator.pop(context, true);
                    }
                  });
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                },
                child: const Text('Enter')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ]),
        ),
      ),
    );
  }
}
