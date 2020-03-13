import 'package:json_annotation/json_annotation.dart';

part 'coronavirus_data.g.dart';

@JsonSerializable()
class CoronavirusData {
  @JsonKey(name: 'Country,Other')
  String countryOther;

  @JsonKey(name: 'TotalCases')
  String totalCases;

  @JsonKey(name: 'NewCases')
  String newCases;

  @JsonKey(name: 'TotalDeaths')
  String totalDeaths;

  @JsonKey(name: 'NewDeaths')
  String newDeaths;

  @JsonKey(name: 'TotalRecovered')
  String totalRecovered;

  @JsonKey(name: 'ActiveCases')
  String activeCases;

  @JsonKey(name: 'Serious,Critical')
  String seriousCritical;

  @JsonKey(name: 'Tot Cases/1M pop')
  String casesPerMillion;

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
