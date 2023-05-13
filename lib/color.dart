import 'package:flutter/material.dart';

int n = 33;
int s = n;
List<Color> berthCardColor = [];
List<int> cur = [];
int cVal = 3;

void select(int seatNumber, VoidCallback onPressed) {
  if (cur.contains(seatNumber - 1)) {
    berthCardColor[seatNumber - 1] = Colors.deepPurple;
    cur.remove(seatNumber - 1);
    onPressed();
  } else {
    if (cur.length < cVal) {
      berthCardColor[seatNumber - 1] = Colors.deepOrange;
      cur.add(seatNumber - 1);
      onPressed();
    }
  }
}

void colorRefresh() {
  int x = cur.length;
  for (int i = 0; i < x; i++) {
    berthCardColor[cur[0]] = Colors.deepPurple;
    cur.remove(cur[0]);
  }
}
