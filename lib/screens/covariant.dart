//overriding a parameter’s type with a subtype
class Game {
  int points = 10;
  int opponentPoints = 5;
  late String opponent;
}

class FootballGame extends Game {
  late int goals;
  late int opponentGoals;
}

class BasketBallGame extends Game {
  late int homeRuns;
  late int opponentHomeRuns;
}

class Team {
  late String name;
  List<Game> games = [FootballGame(), BasketBallGame()];

  double winningPercentage() {
    int wins = 0;
    for (var game in games) {
      wins += (game.points > game.opponentPoints) ? 1 : 0;
    }
    // print(games);
    return wins / games.length;
  }
}

class FootballTeam extends Team {
  /* late List <FootballGame> games; It will show error
  to change type of games list property to football game
  we will use the covariant keyword */
  @override
  covariant List<FootballGame> games = [FootballGame()];
}

abstract class Animal {
  abstract int? age;
}

class Cat extends Animal {
  @override
  covariant int age; // overriding age integer and making it non-nullable
  Cat({required this.age});
}

void main() {
  Team team = Team();
  print(team.games);
  FootballTeam fbTeam = FootballTeam();
  print(fbTeam.games);
  Cat cat = Cat(age: 3);
  print(cat.age);
  Animal animal = cat;
  print(cat.age);

  // cat.age = null; // Compile-time error.
  print(cat.age);
  animal.age = null; // OK at compile time, throws at run time.
  print(animal.age);
}
