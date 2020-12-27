import 'package:dio/dio.dart';
import 'package:http_project/repository/via_cep_repoository.dart';

Future<void> run() async {
  var dio = Dio();
  var respostaEndereco = await ViaCepRepository().buscarEndereco();
  print("Logradouro ${respostaEndereco.logradouro}");
  print("toMap ${respostaEndereco.toMap()}");
}