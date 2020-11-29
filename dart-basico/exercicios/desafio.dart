main (){
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  List<String> listaDePacientesMaioresDe20Anos = List();
  List<String> nomesFamilias = List();

  for(String linhaPaciente in pacientes){   
    List<String> linhaSplitada = linhaPaciente.split("|");
    String nome = linhaSplitada[0];
    int idade = int.tryParse(linhaSplitada[1]) ?? 0;
    if(idade>20) {
      listaDePacientesMaioresDe20Anos.add(linhaPaciente);
    }
    String sobrenome = nome.split(" ")[1];
    nomesFamilias.add(sobrenome);
  }

  nomesFamilias = nomesFamilias.toSet().toList();

  int qtdMaiores20Anos = listaDePacientesMaioresDe20Anos.length;
  print("Há $qtdMaiores20Anos pacientes maiores de 20 anos");

  for(String linhaFamilia in nomesFamilias) {
    print("Familia "+linhaFamilia+":");
    for(String linhaPaciente in pacientes) { 
      List<String> pacienteSplitado = linhaPaciente.split("|");
      String nomeSobrenome = pacienteSplitado[0];
      String sobrenome = nomeSobrenome.split(" ")[1];
      if(sobrenome == linhaFamilia) {
        print(nomeSobrenome.split(" ")[0]);
      }  
    }
  }
}