main () {
  // Posso mudar os dados da variavel a qualquer momento
  String nome = "fabiano";

  // Nao posso mudar os dados da variavel
  final String nomeCompleto = "Fabiano final";
  print(nomeCompleto);


  // Não posso mudar os dados da variavel em tempo de execucao
  const String nomeConst = "fabiano const";
  print(nome);
  print(nomeCompleto);
  print(nomeConst);
}