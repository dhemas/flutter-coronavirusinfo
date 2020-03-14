import 'package:flutter/material.dart';
import 'package:flutter_coronavirusinfo/api/api_coronavirus.dart';
import 'package:flutter_coronavirusinfo/models/chart_data.dart';
import 'package:flutter_coronavirusinfo/models/coronavirus_data.dart';
import 'package:flutter_coronavirusinfo/widgets/pie_chart.dart';

class MainRoute extends StatefulWidget {
  @override
  _MainRouteState createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  // locals
  final _coronavirusDataList = List<CoronavirusData>();

  @override
  void initState() {
    super.initState();

    // initial fetch
    _fetchData();
  }

  _fetchData() async {
    try {
      final data = await ApiCoronavirus().fetchData();
      setState(() {
        print("Data received: ${data.length}");
        _coronavirusDataList.clear();
        _coronavirusDataList.addAll(data);
      });
    } catch (exception) {
      // handle exception
      print(exception);
    }
  }

  Widget _buildHighlightCard() {
    final highlightList = [
      ChartData(
        'Sick',
        _coronavirusDataList.fold(
            0, (previousValue, element) => previousValue + element.activeCases),
      ),
      ChartData(
        'Recovered',
        _coronavirusDataList.fold(
            0, (previousValue, element) => previousValue + element.totalRecovered),
      ),
      ChartData(
        'Death',
        _coronavirusDataList.fold(
            0, (previousValue, element) => previousValue + element.totalDeaths),
      ),
    ];

    if (_coronavirusDataList.isNotEmpty)
      return PieOutsideLabelChart.withData(highlightList);
    else
      return CircularProgressIndicator();
  }

  @override
  Widget build(BuildContext context) {
    final cardHighlight = Card(
      child: Row(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            child: _buildHighlightCard(),
          ),
        ],
      ),
    );

    final body = SingleChildScrollView(
      child: Column(
        children: <Widget>[
          cardHighlight,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Coronavirus Updates')),
      body: body,
    );
  }
}
