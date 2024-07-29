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

class ColumnchartCircular extends StatefulWidget {
  const ColumnchartCircular({
    Key? key,
    this.width,
    this.height,
    required this.chartDataValores,
    required this.chartDataMeses,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<int> chartDataValores;
  final List<String> chartDataMeses;

  @override
  State<ColumnchartCircular> createState() => _ColumnchartCircularState();
}

class _ColumnchartCircularState extends State<ColumnchartCircular> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.width,
        height: widget.height,
        child: SfCircularChart(
          // Enable the tooltip for the chart
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            PieSeries<ChartData, String>(
              // Enable the tooltip for the series
              enableTooltip: true,
              dataSource: getChartData(),
              xValueMapper: (ChartData data, _) => data.month,
              yValueMapper: (ChartData data, _) => data.value,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    List<ChartData> chartData = [];
    for (int i = 0; i < widget.chartDataMeses.length; i++) {
      chartData
          .add(ChartData(widget.chartDataMeses[i], widget.chartDataValores[i]));
    }
    return chartData;
  }
}

class ChartData {
  ChartData(this.month, this.value);
  final String month;
  final int value;
}
