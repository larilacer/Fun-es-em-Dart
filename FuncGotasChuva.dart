void main() {
  String raindrops(int number) {
    String result = '';

    if (number % 3 == 0) {
      result += 'Pling';
    }

    if (number % 5 == 0) {
      result += 'Plang';
    }

    if (number % 7 == 0) {
      result += 'Plong';
    }

    return result.isEmpty ? number.toString() : result;
  }

  print(raindrops(12));
  print(raindrops(20));
  print(raindrops(28));
  print(raindrops(30));
  print(raindrops(34));
}
