
import 'dashboard.dart';
import 'drink.dart';
import 'order.dart';
import 'order_manager.dart';

void main() {
  var manager = OrderManager();

  var order1 = Order(
    customerName: "Rana",
    drink: Shai(),
    instructions: "extra mint",
  );

  var order2 = Order(
    customerName: "Mohamed",
    drink: TurkishCoffee(),
    instructions: "less sugar",
  );

  var order3 = Order(
    customerName: "Ali",
    drink: HibiscusTea(),
    instructions: "cold",
  );


  manager.addOrder(order1);
  manager.addOrder(order2);
  manager.addOrder(order3);


  manager.completeOrder(order1);

  var dashboard = Dashboard(manager);
  dashboard.showPendingOrders();
  dashboard.showCompletedOrders();
  dashboard.showTopSellingDrinks();

}


