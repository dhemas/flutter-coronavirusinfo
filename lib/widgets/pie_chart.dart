import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_coronavirusinfo/models/chart_data.dart';

class PieOutsideLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  PieOutsideLabelChart(this.seriesList, {this.animate});

  factory PieOutsideLabelChart.withData(List<ChartData> data) {
    return new PieOutsideLabelChart(
      _buildSeries(data),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.ArcRendererConfig(
        arcRendererDecorators: [
          charts.ArcLabelDecorator(),
        ],
      ),
    );
  }

  static List<charts.Series<ChartData, String>> _buildSeries(
      List<ChartData> data) {
    return [
      charts.Series<ChartData, String>(
        id: 'Highlights',
        domainFn: (ChartData d, _) => d.label,
        measureFn: (ChartData d, _) => d.value,
        data: data,
        labelAccessorFn: (ChartData d, _) => '${d.label}\n${d.value}',
      )
    ];
  }
}
