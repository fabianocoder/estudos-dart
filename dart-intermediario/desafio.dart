main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  Set<String> listaSemPessoasDuplicadas = Set.from(pessoas);
  int qtdPessoasMasculinas = 0;
  int qtdPessoasFemininas = 0;

  print("parte 1 e 2");
  listaSemPessoasDuplicadas.forEach((linha) { 
      print(linha);
      String sexo = (linha.split("|")[2]);
      if(sexo == 'Masculino') {
        qtdPessoasMasculinas++;
      }
      if(sexo == 'Feminino') {
        qtdPessoasFemininas++;
      }
  });
  print("Há $qtdPessoasMasculinas homens e $qtdPessoasFemininas mulheres");

  List<String> listaMaioresDeIdade = List();
  print("parte 3");
  listaMaioresDeIdade = listaSemPessoasDuplicadas.where((l) => int.parse( l.split("|")[1]) > 18).toList();
  print(listaMaioresDeIdade);
  print("parte 4");
  // listaMaioresDeIdade.sort((n1, n2) => n1.compareTo(n2));
  listaMaioresDeIdade.sort((n1, n2) => n2.split("|")[1].compareTo(n1.split("|")[1]));
  print(listaMaioresDeIdade.first);
}