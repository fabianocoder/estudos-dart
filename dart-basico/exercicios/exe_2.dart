import 'dart:io';

main () {
  List<String> listaNomes = List();
  listaNomes.add("Walter White");
  listaNomes.add("Saul Goodman");
  listaNomes.add("Skyler");
  listaNomes.add("Gustavo Fring");
  listaNomes.add("Jesse Pinkman");
  listaNomes.add("Mike");
  listaNomes.add("Hank");
  listaNomes.add("Tuco Salamanca");
  listaNomes.add("Hector Salamanca");
  listaNomes.add("Walter White Jr.");
  for(int i=0;i<10;i++) {
    String nome = listaNomes[i];
    print("Seja bem vindo: $nome");
  }
}