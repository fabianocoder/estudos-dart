import 'dart:async';

void run () {
  // print("Streams teste");
  var streamController =  new StreamController();
  // porta de entrada
  var portaDeEntrada = streamController.sink;
  var portaDeSaida = streamController.stream.asBroadcastStream();
  portaDeSaida.listen((event) => print(' ${DateTime.now()} primeiro cara olhando o cano... $event'));
  portaDeSaida.listen((event) => print(' ${DateTime.now()}outro cara olhando o cano... $event')); 
  portaDeSaida.where((value) => (value % 2) == 0).listen((value) => print("bolinha $value"));

  // Future.delayed(Duration(seconds: 3), () => portaDeEntrada.add(1));
  // portaDeEntrada.add(2);
  // portaDeEntrada.add(3);
  // portaDeEntrada.add(4);
  // portaDeEntrada.add(5);

  List.generate(20, (i) => i++).forEach((element) {
      portaDeEntrada.add(element);
  });


}