bool isPrime(int number) {
  if (number <= 1) return false;
  if (number <= 3) return true;

  if (number % 2 == 0 || number % 3 == 0) return false;

  for (int i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) return false;
  }

  return true;
}

List<int> findPrimesUpToN(int n) {
  List<int> primeNumbers = [];

  for (int i = 2; i <= n; i++) {
    if (isPrime(i)) {
      primeNumbers.add(i);
    }
  }

  return primeNumbers;
}

void main() {
  int n = 100; // İstediğiniz N değerini burada belirleyebilirsiniz.
  List<int> primes = findPrimesUpToN(n);
  print('1\'den $n\'e kadar olan asal sayılar: $primes');
}
