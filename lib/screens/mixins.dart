/*
* mixin is a class that contains methods for use by other classes.
* It doesn't need to be a parent class of those classes.
* Multiple mixins can be used by classes
*/

// Creating a Bark mixin
mixin Bark {
  void bark() => print('Barking');
}

mixin Fly {
  void fly() => print('Flying');
}

mixin Crawl {
  void crawl() => print('Crawling');
}

class Animal {
  void breathe() {
    print("Breathing");
  }
}

class Dog extends Animal with Bark {}

class Bat extends Animal with Fly {}

class Snake extends Animal with Crawl {
  void display() {
    print(".....Snake.....");
    breathe();
    crawl();
  }
}

// by using 'on' we can restrict mixin usage
mixin Accelerate on Car {
  void accelerate() => print('Accelerating');
}
mixin Brake on Car {
  void brake() => print('Braking');
}
mixin ShiftGear on Car {
  void shiftGear() => print('Shifting Gear');
}

abstract class Car {
  void body() {
    print('Has body');
  }

  void run() {
    print('Car is running');
  }

  void stop() => print('Car is Stopping');
}

class Bmw extends Car with Accelerate, Brake, ShiftGear {
  void description() {
    print('This is bmw car');
  }
}

main() {
  var dog = Dog();
  dog.breathe();
  dog.bark();

  var snake = Snake();
  snake.display();

  var bat = Bat();
  bat.fly();

  Bmw bmw = Bmw();
  bmw.description();
  bmw.run();
  bmw.shiftGear();
  bmw.accelerate();
  bmw.brake();
  bmw.stop();
}
