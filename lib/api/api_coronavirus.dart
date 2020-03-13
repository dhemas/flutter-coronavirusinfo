import 'dart:convert';

import 'package:flutter_coronavirusinfo/exceptions.dart';
import 'package:flutter_coronavirusinfo/models/coronavirus_data.dart';
import 'package:http/http.dart' as http;

class ApiCoronavirus {
  final httpClient = http.Client();

  Future<List<CoronavirusData>> fetchData() async {
    final url = "http://10.0.2.2:8080";
    final response = await httpClient.get(url);

    if (response.statusCode == 200) {
      try {
        final coronavirusDataList = jsonDecode(response.body)
            .map<CoronavirusData>((data) => CoronavirusData.fromJson(data))
            .toList();

        if (coronavirusDataList.isEmpty)
          throw EmptyResponseException();

        return coronavirusDataList;
      } catch (exception) {
        throw exception;
      }
    } else {
      throw ServerResponseException();
    }
  }
}
