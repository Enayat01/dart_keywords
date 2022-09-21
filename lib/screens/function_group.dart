int increment(int x) => ++x;
int decrement(int x) => --x;

int apply(int x, Function function) {
  // Function is used as an parameter in the arguments
  return function(x);
}

void main() {
  int result = apply(5, increment);
  int result2 = apply(2, decrement);
  print(result);
  print(result2);
}

