import 'order.dart';

class OrderManager {
  final List<Order> _orders = [];

  void addOrder(Order order) {
    _orders.add(order);
    print("Added order for ${order.customerName}");

  }

  void completeOrder(Order order) {
    order.markCompleted();
  }

  List<Order> pendingOrders() {
    return _orders;
  }

  List<Order> completedOrders() {
    return _orders;
  }

  void generateReport() {
    print("--- Daily Report ---");
    Map<String, int> drinkCount = {};
    for (var order in _orders) {
      drinkCount[order.drink.name] =
          (drinkCount[order.drink.name] ?? 0) + 1;
    }
    drinkCount.forEach((drink, count) {
      print("$drink: $count sold");
    });
    print("Total orders: ${_orders.length}");
  }

  List<Order> get allOrders => _orders;
}
