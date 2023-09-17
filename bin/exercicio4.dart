List<int> generateSequence(int n) {
  List<int> sequence = [];
  int x = 6; // Começamos com x = 6 para o primeiro número da sequência
  int y = 4;

  for (int i = 0; i < n; i++) {
    sequence.add(x * x * x * x);
    sequence.add(y);
    sequence.add((x + 2) * (x + 2) * (x + 2) * (x + 2));
    sequence.add(y + 2);
    sequence.add((x + 4) * (x + 4) * (x + 4) * (x + 4));
    sequence.add(y + 4);
  }

  print(sequence);
  return sequence;
}

void main() {
  int n = 1; // Defina quantos números da sequência você deseja gerar
  List<int> sequence = generateSequence(n);
}
