// it allows async/await keyword to use a Future.
//awaits for function that does some work which takes time to complete.
// It returns the result wrapped in the Future.
Future<int> doSomeLongTask() async {
  await Future.delayed(const Duration(seconds: 1));
  return 42;
}

//async* gives you a Stream.
// returns a bunch of future values one at a time
Stream<int> countForOneMinute() async* {
  for (int i = 1; i <= 60; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

main() async {
  int result = await doSomeLongTask();
  print(result); // prints '42' after waiting 1 second

  await for (int i in countForOneMinute()) {
    print(i); // prints 1 to 60, one integer per second
  }
}
