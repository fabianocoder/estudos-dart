import 'package:desafio_ibge/models/estado.dart';
import 'package:desafio_ibge/repository/ibge.dart';
import 'package:mysql1/mysql1.dart';
import 'models/cidade.dart';

Future<void> main() async {
    var respostaEstado = await Ibge().buscarEstado();

    List<int> listCodEstado = [];
    for(var estadoInstance in respostaEstado) {
      await inserirEstado(estadoInstance);
      listCodEstado.add(estadoInstance.id);
    }

    for(int codEstado in listCodEstado) {
      var respostaCidades = await Ibge().buscarCidadesPorEstado(codEstado);
      for(var cidadeInstance in respostaCidades) {
        await inserirCidade(cidadeInstance, codEstado);
      }
    }
  
}

Future<void> inserirEstado (Estado estado) async {
  var conn = await getConnection();
  var result =await conn.query(
      'insert into estado (id, nome) values (?, ?)',
      [estado.id, estado.nome]);
  print('Estado ${estado.nome} inserido!');
  await conn.close();
}

Future<void> inserirCidade (Cidade cidade, int codEstado) async {
  var conn = await getConnection();
  var result =await conn.query(
      'insert into cidade (id, estado_id, nome) values (?, ?, ?)',
      [cidade.id, codEstado, cidade.nome]);
  print('Cidade ${cidade.nome} inserida!');
  await conn.close();
}

Future<MySqlConnection> getConnection() async {
  var settings = ConnectionSettings(
    host: 'localhost', 
    port: 3306,
    user: 'fabiano',
    password: 'password',
    db: 'desafio_flutter'
  );
  return await MySqlConnection.connect(settings);
}
