import 'package:flutter/material.dart';

void main() {
  runApp(CarShowroomApp());
}

class CarShowroomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarShowroom(),
    );
  }
}

class CarShowroom extends StatelessWidget {

  final List<Map<String, dynamic>> cars = [
    {'name': 'Tesla Model S', 'price': 79999, 'color': Colors.red},
    {'name': 'Ford Mustang', 'price': 55999, 'color': Colors.blue},
    {'name': 'Chevrolet Camaro', 'price': 42999, 'color': Colors.orange},
    {'name': 'BMW M3', 'price': 68999, 'color': Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Showroom'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: cars.map((car) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: car['color'],
                radius: 20,
              ),
              title: Text(
                car['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Price: \$${car['price']}'),
              trailing: Icon(Icons.directions_car, color: car['color']),
            ),
          );
        }).toList(), // Use map() to transform car data into widgets
      ),
    );
  }
}
