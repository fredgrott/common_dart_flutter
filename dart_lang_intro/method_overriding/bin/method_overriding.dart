// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Exploring Method Overriding

void main() {
  var dog = Dog();
  dog.eat();

  print(dog.color);
}

class Animal {
  String color = "brown";

  void eat() {
    print("Animal is eating !");
  }
}

class Dog extends Animal {
  late String breed;

  @override
  String color = "Black"; // Property Overriding

  void bark() {
    print("Bark !");
  }

  // Method Overriding
  @override
  void eat() {
    print("Dog is eating !");
    super.eat();
    print("More food to eat");
  }
}
