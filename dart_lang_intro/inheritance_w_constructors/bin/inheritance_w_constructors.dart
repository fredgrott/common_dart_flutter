// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Inheritance with Default Constructor and Parameterised Constructor
// 2. Inheritance with Named Constructor

// ignore_for_file: unused_local_variable

void main() {
  var dog1 = Dog("Labrador", "Black");

  print("");

  var dog2 = Dog("Pug", "Brown");

  print("");

  var dog3 = Dog.myNamedConstructor("German Shepherd", "Black-Brown");
}

class Animal {
  late String color;

  Animal(this.color) {
    print("Animal class constructor");
  }

  Animal.myAnimalNamedConstrctor(String color) {
    print("Animal class named constructor");
  }
}

class Dog extends Animal {
  late String breed;

  Dog(this.breed, String color) : super(color) {
    print("Dog class constructor");
  }

  Dog.myNamedConstructor(this.breed, String color)
      : super.myAnimalNamedConstrctor(color) {
    print("Dog class Named Constructor");
  }
}
