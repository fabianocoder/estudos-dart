void main() {
    List paciente = [
        'Rodrigo Rahman|35',
        'Guilheme Rahman|10',
        'João Rahman|20',
        'Joaquin Rahman|25',
        'Luan Rahman|23',
    ];

    paciente.removeLast();
    paciente.removeLast();

    for(String linhaPaciente in paciente){ 
      List<String> linhaSplitada = linhaPaciente.split("|");
      String nome = linhaSplitada[0];
      String idade = linhaSplitada[1];
      print("$nome tem $idade anos");
    }
}