import 'dart:io';

void main() {
    List paciente = [
        'Rodrigo Rahman|35',
        'Guilheme Rahman|10',
        'João Rahman|17',
        'Joaquin Rahman|28',
        'Luan Rahman|23',
    ];

    List<String> pacientesMaioresDeIdade =  List();

    for(String linhaPaciente in paciente){   
      List<String> linhaSplitada = linhaPaciente.split("|");
      String nome = linhaSplitada[0];
      int idade = int.tryParse(linhaSplitada[1]) ?? 0;
      if(idade>18) {
       pacientesMaioresDeIdade.add(linhaPaciente);
      }
    }

    for(String linhaPacienteMaioresDeIdade in pacientesMaioresDeIdade){ 
      List<String> linhaSplitada = linhaPacienteMaioresDeIdade.split("|");
      String nome = linhaSplitada[0];
      String idade = linhaSplitada[1];
      print("$nome tem $idade anos");
    }
}