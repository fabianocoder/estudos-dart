void main() {
    List paciente = [
        'Rodrigo Rahman|35',
        'Guilheme Rahman|10',
        'João Rahman|20',
        'Joaquin Rahman|25',
        'Luan Rahman|23'
    ];

    for(String linhaPacienteIdade in paciente) {
      List<String> linhaSplitada = linhaPacienteIdade.split("|");
      String nome = linhaSplitada[0];
      String idade = linhaSplitada[1];
      print("$nome tem $idade anos");
    }
}