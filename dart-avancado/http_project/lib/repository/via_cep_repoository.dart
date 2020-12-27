import 'package:dio/dio.dart';
import 'package:http_project/models/cidade_model.dart';

class ViaCepRepository {
  Future<CidadeModel> buscarEndereco() async {
    var url = 'https://viacep.com.br/ws/06416060/json/';
    var dio = Dio();
    Response response = await dio.get(url);
    if(response.statusCode == 200) {
      var respData = response.data;
      if(respData['erro']!=null) {
        return null;
      } else {
        return CidadeModel.fromMap(respData);
      }
    }
  }
}