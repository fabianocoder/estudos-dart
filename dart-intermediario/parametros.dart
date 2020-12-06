main(){
  int resultado =  soma(3,4);
  print(resultado);

  int resultadoNomeado = somaComParametrosNomeados(numero1: 9, numero2: 10 );
  print(resultadoNomeado);

  int resultadoNomeadoComValoresDefault = somaComParametrosNomeados();
  print(resultadoNomeadoComValoresDefault);

  imprimir("fabiano");
  imprimir("fabiano", 28);
}

int soma(int numero1, int numero2){
  return numero1 + numero2;
}

int somaComParametrosNomeados({int numero1=0, int numero2=0}){
   return numero1 + (numero2*2);
}

void imprimir(String nome, [int idade]) {
  String mostra_idade = (idade != null) ? "e tem $idade anos" : "";
  print("O nome é $nome $mostra_idade");
}