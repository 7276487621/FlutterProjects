
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data.dart';


class BarChartWidget extends StatelessWidget {
  final double barWidth = 22;

  @override
  Widget build(BuildContext context) => BarChart(
    BarChartData(
      alignment: BarChartAlignment.center,
      maxY: 20,
      minY: -20,
      groupsSpace: 12,
      barTouchData: BarTouchData(enabled: true),

      gridData: FlGridData(
        checkToShowHorizontalLine: (value) => value % BarData.interval == 0,
        getDrawingHorizontalLine: (value) {
          if (value == 0) {
            return FlLine(
              color: const Color(0xff363753),
              strokeWidth: 3,
            );
          } else {
            return FlLine(
              color: const Color(0xff2a2747),
              strokeWidth: 0.8,
            );
          }
        },
      ),
      barGroups: BarData.barData
          .map(
            (data) => BarChartGroupData(
          x: data.id,
          barRods: [
            BarChartRodData(
              toY: data.y,
              width: barWidth,
              color: data.color,
              borderRadius: data.y > 0
                  ? BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              )
                  : BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
          ],
        ),
      )
          .toList(),
    ),
  );
}
