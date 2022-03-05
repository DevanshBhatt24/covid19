import 'package:covid19/data/constants.dart';
import 'package:covid19/data/countrycontainer.dart';
import 'package:covid19/data/loading.dart';
import 'package:covid19/data/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:covid19/services/covidapi.dart';
import 'package:covid19/models/countrymodel.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  CovidService _covid = CovidService();
  Future<CountrySummaryModel>? summarylist;
  String? country;
  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      summarylist = _covid.getCountrySummary("india");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 0),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Color(0xffe5e5e5))),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/maps-and-flags.svg'),
              SizedBox(
                width: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 230,
                child: CountryListPick(
                  theme: CountryTheme(
                    isShowFlag: true,
                    isShowTitle: true,
                    isShowCode: false,
                    isDownIcon: false,
                    showEnglishName: true,
                  ),
                  // Set default value
                  initialSelection: 'In',
                  onChanged: (CountryCode? code) {
                    setState(() {
                      country = code!.name;
                      summarylist = _covid.getCountrySummary(country!);
                    });
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset("assets/icons/dropdown.svg"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(
              Icons.refresh,
              size: 20,
              color: kBodyTextColor,
            ),
            onPressed: () {
              setState(() {
                summarylist = _covid.getCountrySummary("india");
              });
            },
          ),
        ),
        FutureBuilder(
            future: summarylist,
            builder: (context, snapshot) {
              if (snapshot.hasError)
                return Center(
                  child: Text("Error"),
                );
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return loading(inputloading: true);
                default:
                  return !snapshot.hasData
                      ? Center(
                          child: Text('Empty'),
                        )
                      : countrycontent(
                          summary: snapshot.data as CountrySummaryModel,
                        );
              }
            }),
        // contentcontainer(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
