import 'drink.dart';

class Order {
  final String customerName;
  final Drink drink;
  final String instructions;
  bool _isCompleted = false;

  Order({
    required this.customerName,
    required this.drink,
    this.instructions = "",
  });

  void markCompleted() {
    _isCompleted = true;
    print("Order for $customerName completed!");
  }

  bool get isCompleted => _isCompleted;

}
