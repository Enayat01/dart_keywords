typedef Compare<T> = int Function(T a, T b);

String sort(String a, int b) => 'a';

void main() {
  //assertion is a check to verify if a value is what it supposed to be.
  //It is used in debug mode to avoid bad value and terminate the
  //program by throwing error before value is used.

  assert(sort is Compare<int>); //error
}
