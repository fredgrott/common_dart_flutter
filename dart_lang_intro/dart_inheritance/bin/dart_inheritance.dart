// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Exploring Inheritance

// ignore_for_file: avoid_print

void main() {
  final dog = Dog();
  dog.breed = "Labrador";
  dog.color = "Black";
  dog.bark();
  dog.eat();

  final cat = Cat();
  cat.color = "White";
  cat.age = 6;
  cat.eat();
  cat.meow();

  final animal = Animal();
  animal.color = "brown";
  animal.eat();
}

class Animal {
  late String color;

  void eat() {
    print("Eat !");
  }
}

class Dog extends Animal {
  // Dog is Child class or sub class, Animal is super or parent class

  late String breed;

  void bark() {
    print("Bark !");
  }
}

class Cat extends Animal {
  // Cat is Child class or sub class, Animal is super or parent class

  late int age;

  void meow() {
    print("Meow !");
  }
}
