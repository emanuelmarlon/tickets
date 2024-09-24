// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class Columnchart extends StatefulWidget {
  final double? width;
  final double? height;
  final List<int> chartDataValores;
  final List<String> chartDataMeses;

  Columnchart({
    Key? key,
    this.width,
    this.height,
    required this.chartDataValores,
    required this.chartDataMeses,
  }) : super(key: key);

  @override
  State<Columnchart> createState() => _ColumnchartState();
}

class _ColumnchartState extends State<Columnchart> {
  List<ChartDataStruct> chartData = [];
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.cyan,
    Colors.indigo,
    Colors.lime,
    Colors.pink,
    Colors.teal,
  ];

  @override
  void initState() {
    super.initState();
    _prepareChartData();
  }

  void _prepareChartData() {
    for (int i = 0; i < widget.chartDataMeses.length; i++) {
      chartData.add(ChartDataStruct(
          widget.chartDataMeses[i], widget.chartDataValores[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.transparent, // Garante que o fundo é transparente
        border: Border.all(color: Colors.transparent), // Remove qualquer borda
      ),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
          isVisible: false,
        ),
        primaryYAxis: NumericAxis(
          isVisible: false,
        ),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CartesianSeries<ChartDataStruct, String>>[
          ColumnSeries<ChartDataStruct, String>(
            dataSource: chartData,
            xValueMapper: (ChartDataStruct data, _) => data.xTitle,
            yValueMapper: (ChartDataStruct data, _) => data.yValue1,
            name: 'Total',
            pointColorMapper: (ChartDataStruct data, _) {
              int index = chartData.indexOf(data);
              return colors[index % colors.length];
            },
            dataLabelSettings: DataLabelSettings(isVisible: true),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );
  }
}

class ChartDataStruct {
  final String xTitle;
  final int yValue1;

  ChartDataStruct(this.xTitle, this.yValue1);
}
