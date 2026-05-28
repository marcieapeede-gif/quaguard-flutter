import 'package:flutter/material.dart';
import '../widgets/temperature_chart.dart';
import '../widgets/ph_level_chart.dart';
import '../widgets/oxygen_chart.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  // Sample data for charts
  final List<double> temperatureData = [
    28.5, 28.7, 29.0, 29.2, 29.5, 29.3, 29.1, 28.8, 28.6, 28.9,
  ];

  final List<double> phData = [
    6.5, 6.6, 6.7, 6.8, 6.9, 6.8, 6.7, 6.6, 6.5, 6.6,
  ];

  final List<double> oxygenData = [
    4.8, 5.0, 5.2, 5.1, 5.3, 5.2, 5.0, 4.9, 5.1, 5.2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reports & Analytics"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Weekly Performance',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TemperatureChart(temperatureData: temperatureData),
            const SizedBox(height: 20),
            PHLevelChart(phData: phData),
            const SizedBox(height: 20),
            OxygenChart(oxygenData: oxygenData),
            const SizedBox(height: 20),
            _buildSummaryCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Summary',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildSummaryRow('Avg Temperature', '${(temperatureData.reduce((a, b) => a + b) / temperatureData.length).toStringAsFixed(1)}°C'),
            _buildSummaryRow('Avg pH', '${(phData.reduce((a, b) => a + b) / phData.length).toStringAsFixed(2)}'),
            _buildSummaryRow('Avg Oxygen', '${(oxygenData.reduce((a, b) => a + b) / oxygenData.length).toStringAsFixed(2)} mg/L'),
            _buildSummaryRow('Status', 'Optimal'),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
