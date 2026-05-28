import 'package:flutter/material.dart';
import '../widgets/sensor_card.dart';

class PondScreen extends StatelessWidget {
  const PondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pond Management"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pond A",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPondDetail("Fish Type", "Tilapia"),
                    _buildPondDetail("Fish Count", "1200"),
                    _buildPondDetail("Water Temp", "29°C"),
                    _buildPondDetail("pH Level", "6.8"),
                    _buildPondDetail("Oxygen Level", "5.2 mg/L"),
                    _buildPondDetail("Ammonia Level", "0.5 ppm"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Quick Metrics",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SensorCard(
              title: "Water Quality",
              value: "Good",
              icon: Icons.water_drop,
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPondDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
