main (){
  String nome = 'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';
  List<String> listaNomes = nome.split(" ");
  int qtdLista = listaNomes.length;
  print("A quantidade de nomes são: $qtdLista");
}