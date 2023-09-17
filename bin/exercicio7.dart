import 'dart:io';

int calcularNumeroTriangular(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + calcularNumeroTriangular(n - 1);
  }
}

void imprimirTriangulo(int numero, int linha, int coluna) {
  if (linha <= numero) {
    if (coluna <= linha) {
      stdout.write('* ');
      imprimirTriangulo(numero, linha, coluna + 1);
    } else {
      print('');
      imprimirTriangulo(numero, linha + 1, 1);
    }
  }
}

void main() {
  stdout.write('Digite um número natural N: ');
  int n = int.parse(stdin.readLineSync() ?? '0');

  if (n <= 0) {
    print('N deve ser um número natural maior que zero.');
    return;
  }

  int numeroTriangular = calcularNumeroTriangular(n);

  print('O $n-ésimo número triangular é: $numeroTriangular');
  print('Triângulo equivalente:');
  imprimirTriangulo(numeroTriangular, 1, 1);
}
