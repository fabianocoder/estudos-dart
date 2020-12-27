import 'dart:convert';

class Estado {
  int id;
  String nome;
  
  Estado({
    this.id,
    this.nome
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }

  factory Estado.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Estado(
      id: map['id'],
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Estado.fromJson(String source) => Estado.fromMap(json.decode(source));
}
