import 'package:covid19/models/countrymodel.dart';
import '../models/globalmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidService {
  Future<GlobalSummaryModel> getGlobalSummary() async {
    Uri url = Uri.parse("https://api.covid19api.com/summary");
    final data = await http.Client().get(url);

    if (data.statusCode != 200) throw Exception();

    GlobalSummaryModel summary =
        new GlobalSummaryModel.fromJson(json.decode(data.body));

    return summary;
  }

  Future<CountrySummaryModel> getCountrySummary(String slug) async {
    Uri url = Uri.parse("https://covid19.mathdro.id/api/countries/" + slug);
    final data = await http.Client().get(url);

    if (data.statusCode != 200) throw Exception();

    CountrySummaryModel summaryList =
        new CountrySummaryModel.fromJson(json.decode(data.body));
    ;

    return summaryList;
  }
}
