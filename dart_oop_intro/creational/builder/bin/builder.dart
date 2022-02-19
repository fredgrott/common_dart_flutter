// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: The intent of the Builder design pattern is to separate
//       the construction of a complex object from its representation.
//       By doing so the same construction process can create
//       different representations.
//
//       from https://en.wikipedia.org/wiki/Builder_pattern

// ignore_for_file: avoid_print

class PizzaBuilder {
  late String crust;
  late int diameter;
  late Set<String> _toppings;

  PizzaBuilder(this.diameter);

  Set<String> get toppings => _toppings;
  set toppings(Set<String> newToppings) {
    _toppings = newToppings;
    _ensureCheese();
  }

  void _ensureCheese() {
    _toppings.add("cheese");
  }

  Pizza build() {
    return Pizza(this);
  }
}

class Pizza {
  late String _crust;
  late int _diameter;
  late Set<String> _toppings;

  Pizza(PizzaBuilder builder) {
    _crust = builder.crust;
    _diameter = builder.diameter;
    _toppings = builder.toppings;
  }

  String get crust => _crust;
  int get diameter => _diameter;
  String get toppings => _stringifiedToppings();
  String _stringifiedToppings() {
    final stringToppings = _toppings.join(", ");
    final lastComma = stringToppings.lastIndexOf(",");
    final replacement =
        ",".allMatches(stringToppings).length > 1 ? ", and" : " and";

    return stringToppings.replaceRange(lastComma, lastComma + 1, replacement);
  }

  @override
  String toString() {
    return 'A delicous $_diameter" pizza with $_crust crust covered in $toppings';
  }
}

void main() {
  // Create a handy PizzaBuilder with an 8" diameter.
  final pizzaBuilder = PizzaBuilder(8);

  // Add some attributes to the builder.
  pizzaBuilder.crust = "deep dish";
  pizzaBuilder.toppings = {"pepperoni"};

  // Let's make a pizza!
  final plainPizza = Pizza(pizzaBuilder);
  print("Behold! $plainPizza.");
  assert(
    plainPizza.toString() ==
        'Behold! A delicous 8" pizza with deep dish crust covered in pepperoni and cheese.',
  );

  // Now to adjust some things for the next pizza...
  pizzaBuilder.crust = "gold plated";
  pizzaBuilder.diameter = 72;
  pizzaBuilder.toppings = {"anchovies", "caviar", "diamonds"};

  // The beauty of the build is you can quickly iterate and produce instances of a class.
  // For example, we have an early employee of the latest unicorn in line. So much disposable income!
  // Also note, we use the .build() function of the builder this time.
  final luxuriousPizza = pizzaBuilder.build();
  print("Wow! $luxuriousPizza? Someone is rich!");
  assert(luxuriousPizza.toString() ==
      'Wow! A delicous 72" pizza with gold plated crust covered in anchovies, caviar, diamonds, and cheese? Someone is rich!');
}
