// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coronavirus_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronavirusData _$CoronavirusDataFromJson(Map<String, dynamic> json) {
  return CoronavirusData(
    countryOther: json['Country,Other'] as String,
    totalCases: json['TotalCases'] as String,
    newCases: json['NewCases'] as String,
    totalDeaths: json['TotalDeaths'] as String,
    newDeaths: json['NewDeaths'] as String,
    totalRecovered: json['TotalRecovered'] as String,
    activeCases: json['ActiveCases'] as String,
    seriousCritical: json['Serious,Critical'] as String,
    casesPerMillion: json['Tot Cases/1M pop'] as String,
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
