import 'dart:io';

void run() {
  File('texto.txt').readAsString().then((value) => print(value));
}
