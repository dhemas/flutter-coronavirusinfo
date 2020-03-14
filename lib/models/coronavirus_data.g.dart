// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coronavirus_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronavirusData _$CoronavirusDataFromJson(Map<String, dynamic> json) {
  return CoronavirusData(
    countryOther: json['Country,Other'] as String,
    totalCases: int.tryParse(json['TotalCases'] as String) ?? 0,
    newCases: int.tryParse(json['NewCases'] as String) ?? 0,
    totalDeaths: int.tryParse(json['TotalDeaths'] as String) ?? 0,
    newDeaths: int.tryParse(json['NewDeaths'] as String) ?? 0,
    totalRecovered: int.tryParse(json['TotalRecovered'] as String) ?? 0,
    activeCases: int.tryParse(json['ActiveCases'] as String) ?? 0,
    seriousCritical: int.tryParse(json['Serious,Critical'] as String) ?? 0,
    casesPerMillion: double.tryParse(json['Tot Cases/1M pop'] as String) ?? 0.0,
  );
}

Map<String, dynamic> _$CoronavirusDataToJson(CoronavirusData instance) =>
    <String, dynamic>{
      'Country,Other': instance.countryOther,
      'TotalCases': instance.totalCases,
      'NewCases': instance.newCases,
      'TotalDeaths': instance.totalDeaths,
      'NewDeaths': instance.newDeaths,
      'TotalRecovered': instance.totalRecovered,
      'ActiveCases': instance.activeCases,
      'Serious,Critical': instance.seriousCritical,
      'Tot Cases/1M pop': instance.casesPerMillion,
    };
