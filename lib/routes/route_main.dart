import 'package:flutter/material.dart';
import 'package:flutter_coronavirusinfo/api/api_coronavirus.dart';
import 'package:flutter_coronavirusinfo/models/coronavirus_data.dart';

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
        _coronavirusDataList.clear();
        _coronavirusDataList.addAll(data);
      });
    } catch (exception) {
      // handle exception
      print(exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cardHighlight = Card(
      
    );

    final body = ListView(
      children: <Widget>[

      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('Coronavirus Updates')),
      body: body,
    );
  }
}