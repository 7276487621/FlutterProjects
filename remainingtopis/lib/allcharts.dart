
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:remainingtopis/pie_chart_section.dart';
import 'bar_chart_widget.dart';
import 'indicators_widget.dart';

class AllChartsFlutter extends StatefulWidget {
  const AllChartsFlutter({Key? key}) : super(key: key);

  @override
  State<AllChartsFlutter> createState() => _AllChartsFlutterState();
}

class _AllChartsFlutterState extends State<AllChartsFlutter> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All charts in flutter'),
          bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.pie_chart),
                ),
                Tab(
                  icon: Icon(Icons.bar_chart),
                ),
                Tab(
                  icon: Icon(Icons.stacked_line_chart),
                )
              ]
          ),
        ),
        body: TabBarView(
            children: [
              Center(
                child: PieChartPage(),
              ),
              Center(
                child: BarChartPage(),
              ),
              Center(
                child: LineChartWidget(),
              ),
            ],
        ),
      ),
    );
  }
}

class PieChartPage extends StatefulWidget {
  const PieChartPage({Key? key}) : super(key: key);

  @override
  State<PieChartPage> createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
   int touchedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
            Expanded(
              child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback:(FlTouchEvent,pieTouchResponse){
                        setState(() {
                          if(pieTouchResponse?.touchedSection is FlLongPressEnd ||
                              pieTouchResponse?.touchedSection is FlPanEndEvent
                          ){
                            touchedIndex= -1;
                          }
                          else{
                            touchedIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex??0;
                          }
                        });
                      }
                    ),
                    sections: getSections(touchedIndex),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40.0,
                  )
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(16.0),
                child: IndicatorsWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}



class BarChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    color: const Color(0xff020227),
    child: Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BarChartWidget(),
    ),
  );
}

class LineChartWidget extends StatelessWidget {
   LineChartWidget({Key? key}) : super(key: key);
  final List<Color> gradientColors = [
    const Color(0XFF23b6e6),
    const Color(0XFF02d39a)
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black26,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value){
              return FlLine(
                color: const Color(0XFF37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value){
              return FlLine(
                color: const Color(0Xff37434d),
                strokeWidth: 1,
              );
            }
          ),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          backgroundColor: Colors.black,
          borderData: FlBorderData(
            show: true,
            border: Border.all(color:const Color(0xff37434d) ,width: 2.0)
          ),
          lineBarsData: [
            LineChartBarData(
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                  colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
              )
            ),
              isCurved: true,
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange,
                  Colors.white,
                ]
              ),
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],

            ),
          ],

        ),
      ),
    );
  }
}



