main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach((element) {print(element);});

  List<int> lista = [1,2,3];
  List<String> novaListaString = lista.map((e) => "$e - fabiano").toList();
 
  List<String> novaListaComAny = ["Fabiano", "Humberto","Ranielo"];
  if(novaListaComAny.any((element) => element == "Humberto3"))
  {
      print("Humberto");
  } else {
     print(" nao Humberto");
  } 

  if(novaListaComAny.every((element) => element.contains('a')))
  {
      print("todos tem letra a");
  } else {
     print("nem todos tem a letra a");
  } 

  var retorno = (novaListaComAny.where((p) => p == "Ranielo"));
  print(retorno);


  
   
}