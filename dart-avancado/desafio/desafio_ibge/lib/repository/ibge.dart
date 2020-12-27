import 'package:desafio_ibge/models/cidade.dart';
import 'package:dio/dio.dart';
import 'package:desafio_ibge/models/estado.dart';

class Ibge {
  Future<List<Estado>> buscarEstado() async {
    var dio = Dio();
    var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
    Response responseEstado = await dio.get(url); 
    List<Estado> listEstado = [];
    if(responseEstado.statusCode == 200) {
      for(final Map<String, dynamic> dados in responseEstado.data){
        listEstado.add(Estado.fromMap(dados));
      }
      return listEstado;
    } else {
      print('Não possivel resgatar estados do IBGE');
      return null;
    }
  }

  Future<List<Cidade>> buscarCidadesPorEstado(int codEstado) async {
    var dio = Dio();
    var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$codEstado/distritos';
    Response responseCidades = await dio.get(url); 
    List<Cidade> listCidades = [];
    if(responseCidades.statusCode == 200) {
      for(final Map<String, dynamic> dados in responseCidades.data){
        listCidades.add(Cidade.fromMap(dados));
      }
      return listCidades;
    } else {
      print('Não possivel resgatar cidades do IBGE');
      return null;
    }
  }
}