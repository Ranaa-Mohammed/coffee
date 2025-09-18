# Smart Ahwa Manager App ☕

## Overview  
Smart Ahwa Manager is a simple Dart console application designed to help an ahwa (coffee shop) owner in Cairo manage daily operations efficiently.  
It enables adding customer orders with drink type and special instructions, marking them as completed, viewing dashboards for pending/completed orders, and generating daily sales reports.  

## Features  
- Add customer orders (name, drink, special instructions).  
- Track order status (pending / completed).  
- View pending and completed orders in a dashboard.  
- Generate reports: total orders + top-selling drinks.  


## SOLID Principles  
- Open/Closed Principle (OCP): Drink is abstract; new drinks can be added by subclassing without modifying existing code.  
- Single Responsibility Principle (SRP): OrderManager handles order logic only; Dashboard handles display.  
- Encapsulation: Order status is private (_isCompleted) and controlled through public methods.  
- Interface Segregation Principle (ISP): Dashboard is focused solely on displaying reports and pending orders.  
## OOP Concepts  
- Abstraction: Drink defines a common contract for all drinks.  
- Inheritance & Polymorphism: Shai, TurkishCoffee, and HibiscusTea extend Drink and override prepare().  
- Encapsulation: Sensitive fields are private with getters/setters.

## How SOLID & OOP Are Applied  

In this code, I applied SOLID principles and OOP concepts clearly. I used OCP (Open-Closed Principle) and Polymorphism in designing the abstract class Drink, so that any new drink (e.g., tea or coffee) can be added as a subclass without modifying the original code. I applied Encapsulation in the Order class by making the order state (_isCompleted) private and controlling it through public methods like markCompleted and isCompleted. I also followed SRP (Single Responsibility Principle) in OrderManager, which has a single responsibility for managing orders (add, complete, reports) instead of mixing with display logic. Finally, I created a separate Dashboard for presentation, ensuring it only has display-related methods (ISP - Interface Segregation Principle).  
The importance of these principles is that they keep the code organized, extensible, and easy to maintain: if the café owner wants to add a new drink or change the way data is displayed, it can be done without breaking the existing code. This aligns with the core OOP concepts such as **inheritance, abstraction, encapsulation, and polymorphism, which transform the program into modular, reusable components.


## Example (Usage)  
```dart
void main() {
  var manager = OrderManager();

  manager.addOrder(Order(customerName: "Rana", drink: Shai(), instructions: "extra mint"));
  manager.addOrder(Order(customerName: "Mohamed", drink: TurkishCoffee(), instructions: "less sugar"));
  manager.addOrder(Order(customerName: "Ali", drink: HibiscusTea(), instructions: "cold"));

  manager.completeOrder(manager.allOrders.first);
  var dashboard = Dashboard(manager);
  dashboard.showPendingOrders();
  dashboard.showCompletedOrders();
  dashboard.showTopSellingDrinks();
}

