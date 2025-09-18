abstract class Drink {
  String name;
  double price;

  Drink(this.name, this.price);

  void prepare();
}

class Shai extends Drink {
  Shai() : super("Shai", 15);

  @override
  void prepare() {
    print("Preparing Shai with mint");
  }
}

class TurkishCoffee extends Drink {
  TurkishCoffee() : super("Turkish Coffee", 20);

  @override
  void prepare() {
    print("Preparing Turkish Coffee with foam");
  }
}
class HibiscusTea extends Drink {
  HibiscusTea() : super("Hibiscus Tea", 10);

  @override
  void prepare() {
    print("Preparing Hibiscus Tea with sugar");
  }
}
