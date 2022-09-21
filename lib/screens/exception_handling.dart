void divideByZero(int number) {
  try {
    number % 0;
  } catch (e) {
    print('Exception in divideByZero: $e');
    rethrow;
    /** Rethrow: Partial handling of exception
     * while allowing it to propagate further.
     * Rethrow keeps the stack of exceptions
     * when we rethrow, it tells an exception has happened **/
  }
}

void main() {
  try {
    divideByZero(10);
  } catch (e) {
    print('Exception in main: $e');
  }
}
