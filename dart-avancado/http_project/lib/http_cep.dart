import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


Future<void> run() async{
  var url = 'https://viacep.com.br/ws/06416060/json/';
  var response = await http.get(url);

  if(response.statusCode == 200){
    var respData = convert.jsonDecode(response.body);
   // print(respData);
   // print(respData['cep']);
  }

  Map<String, dynamic> requestSave = {'title':'fabiano', 'body':'aaaa', 'userId':1};

//  var responseSavePost = await http.post('https://jsonplaceholder.typicode.com/posts', body: convert.jsonEncode(requestSave));
  //print(responseSavePost.statusCode);
 // print(responseSavePost.body);

  Map<String, dynamic> requestUpdate = {'id':101,'title':'fabiano', 'body':'aaaa', 'userId':1};
var responseUpdatePost = await http.put('https://jsonplaceholder.typicode.com/posts/1', body: convert.jsonEncode(requestUpdate));
print(responseUpdatePost.statusCode);
print(responseUpdatePost.body);
}