import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart' as pie;

class ExpencePieChart extends StatelessWidget {
  final Map<String, double> dataMap;
  const ExpencePieChart({super.key, required this.dataMap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: pie.PieChart(
        dataMap: dataMap,
        animationDuration: const Duration(milliseconds: 800),
        chartLegendSpacing: 32,
        centerText: "Expences",
      ),
    );
  }
}