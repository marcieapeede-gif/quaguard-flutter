import 'package:flutter/material.dart';
import '../widgets/sensor_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AquaGuard Dashboard"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SensorCard(
              title: "Temperature",
              value: "29.5°C",
              icon: Icons.thermostat,
              color: Colors.red,
            ),
            const SensorCard(
              title: "pH Level",
              value: "6.8",
              icon: Icons.science,
              color: Colors.green,
            ),
            const SensorCard(
              title: "Oxygen",
              value: "5.2 mg/L",
              icon: Icons.air,
              color: Colors.blue,
            ),
            const SensorCard(
              title: "Fish Count",
              value: "1200",
              icon: Icons.set_meal,
              color: Colors.orange,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange.shade300),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info, color: Colors.orange),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Status: Water conditions are stable",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: ListTile(
                leading: Icon(Icons.alarm, color: Colors.teal),
                title: Text("Feeding Reminder"),
                subtitle: Text("Next feeding: 4:00 PM"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
