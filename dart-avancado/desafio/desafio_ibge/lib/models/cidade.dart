import 'dart:convert';

class Cidade {
  int id;
  String nome;
  int estadoId;

  Cidade({
    this.id,
    this.nome,
    this.estadoId
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'estadoId': estadoId,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Cidade(
      id: map['id'],
      nome: map['nome'],
      estadoId: map['estadoId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));
}
