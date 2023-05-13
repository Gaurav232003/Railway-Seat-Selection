import 'package:flutter/material.dart';
import 'package:railway_seat/selectedseats.dart';
import 'berth.dart';
import 'color.dart';
import 'numberofseats.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  initState() {
    super.initState();
    if (n % 8 == 0) {
      s = n;
    } else {
      s = n + 8 - (n % 8);
    }
    for (int i = 0; i <= 100; i++) {
      berthCardColor.add(Colors.deepPurple);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController t1 = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectedSeats()),
                      ).then((value) {
                        setState(() {});
                      });
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const Text(
                    'Seat Finder',
                    style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NumberOfSeats()),
                      ).then((value) {
                        setState(() {});
                      });
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.deepPurple,
                      size: 30.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        controller: t1,
                        decoration: const InputDecoration(
                          hintText: 'Enter Seat Number',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontStyle: FontStyle.italic),
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        color: Colors.deepPurple,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.search, color: Colors.white),
                        onPressed: () {
                          int? num = int.tryParse(t1.text);
                          if (num != null && num <= s) {
                            select(num, () {});
                            setState(() {});
                          }
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              for (var i = 0; i < n; i += 8)
                Berth(
                    seatNumber: i + 1,
                    onPressed: () {
                      setState(() {});
                    })
            ],
          ),
        ),
      ),
    );
  }
}
