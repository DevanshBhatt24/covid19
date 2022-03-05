class GlobalSummaryModel {
  final int? totalConfirmed;
  final int? totalDeaths;
  final int? totalRecovered;
  final DateTime? date;

  GlobalSummaryModel(
      this.totalConfirmed, this.totalDeaths, this.totalRecovered, this.date);

  factory GlobalSummaryModel.fromJson(Map<String, dynamic> json) {
    return GlobalSummaryModel(
      json["Global"]["TotalConfirmed"],
      json["Global"]["TotalDeaths"],
      json["Global"]["TotalRecovered"],
      DateTime.parse(json["Date"]),
    );
  }
}
