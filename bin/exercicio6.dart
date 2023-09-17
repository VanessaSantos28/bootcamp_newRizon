void main() {
  int altura = 4; // Defina a altura do padrão
  int largura = 6; // Defina a largura do padrão

  for (int i = 0; i < altura; i++) {
    String linha = '';
    for (int j = 0; j < largura; j++) {
      linha += (i + j) % 2 == 0 ? '0' : '1';
    }
    print(linha);
  }
}
