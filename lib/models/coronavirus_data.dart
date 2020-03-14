import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'coronavirus_data.g.dart';

@JsonSerializable()
class CoronavirusData {
  @JsonKey(name: 'Country,Other')
  String countryOther;

  @JsonKey(name: 'TotalCases')
  int totalCases;

  @JsonKey(name: 'NewCases')
  int newCases;

  @JsonKey(name: 'TotalDeaths')
  int totalDeaths;

  @JsonKey(name: 'NewDeaths')
  int newDeaths;

  @JsonKey(name: 'TotalRecovered')
  int totalRecovered;

  @JsonKey(name: 'ActiveCases')
  int activeCases;

  @JsonKey(name: 'Serious,Critical')
  int seriousCritical;

  @JsonKey(name: 'Tot Cases/1M pop')
  double casesPerMillion;

  CoronavirusData({
    this.countryOther,
    this.totalCases,
    this.newCases,
    this.totalDeaths,
    this.newDeaths,
    this.totalRecovered,
    this.activeCases,
    this.seriousCritical,
    this.casesPerMillion,
  });

  factory CoronavirusData.fromJson(Map<String, dynamic> json) =>
      _$CoronavirusDataFromJson(json);

  Map<String, dynamic> toJson() => _$CoronavirusDataToJson(this);
}
