class CountrySummaryModel {
  final int? confirmed;
  final int? death;
  final int? recovered;
  final DateTime? date;

  CountrySummaryModel(this.confirmed, this.death, this.recovered, this.date);

  factory CountrySummaryModel.fromJson(Map<String, dynamic> json) {
    return CountrySummaryModel(
      json["confirmed"]["value"],
      json["deaths"]["value"],
      json["recovered"]["value"],
      DateTime.parse(json["lastUpdate"]),
    );
  }
}
