main () {
  var listaParaOrdenacao = [342, 33, 1,2,7,9,10];
  print(listaParaOrdenacao);
  listaParaOrdenacao.sort((n1, n2) {
    if(n1 < n2) {
      return -1;
    } else if (n1 == n2) {
      return 0;
    } else {
      return 1;
    }
  });
  print(listaParaOrdenacao);

  listaParaOrdenacao.sort((n1, n2) => n1.compareTo(n2));
  print(listaParaOrdenacao);
}