import 'order_manager.dart';

class Dashboard {
  final OrderManager orderManager;

  Dashboard(this.orderManager);

  void showPendingOrders() {
    print("--- Pending Orders ---");
    var pending = orderManager.pendingOrders();
    if (pending.isEmpty) {
      print("No pending orders.");
    } else {
      for (var order in pending) {
        print("${order.customerName} - ${order.drink.name} - ${order.instructions}");
      }
    }
  }

  void showCompletedOrders() {
    print("--- Completed Orders ---");
    var completed = orderManager.completedOrders();
    if (completed.isEmpty) {
      print("No completed orders.");
    } else {
      for (var order in completed) {
        print("${order.customerName} - ${order.drink.name} - ${order.instructions}");
      }
    }
  }

  void showTopSellingDrinks() {
    print("--- Top Selling Drinks ---");
    orderManager.generateReport();
  }
}

