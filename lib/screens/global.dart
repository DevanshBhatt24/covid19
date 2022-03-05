import 'package:covid19/data/constants.dart';
import 'package:covid19/data/contentcontainer.dart';
import 'package:covid19/data/loading.dart';
import 'package:covid19/data/update.dart';
import 'package:covid19/models/globalmodel.dart';
import 'package:covid19/services/covidapi.dart';
import 'package:flutter/material.dart';

class GLobal extends StatefulWidget {
  const GLobal({Key? key}) : super(key: key);

  @override
  _GLobalState createState() => _GLobalState();
}

class _GLobalState extends State<GLobal> {
  CovidService covidService = CovidService();
  Future<GlobalSummaryModel>? summary;
  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      summary = covidService.getGlobalSummary();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "See Updates",
            style: ktitletextStyle,
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
                summary = covidService.getGlobalSummary();
              });
            },
          ),
        ),
        FutureBuilder(
            future: summary,
            builder: (context, snapshot) {
              if (snapshot.hasError)
                return Center(
                  child: Text("Error"),
                );
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return loading(
                    inputloading: true,
                  );
                default:
                  return !snapshot.hasData
                      ? Center(
                          child: Text('Empty'),
                        )
                      : globalcontentcontainer(
                          summary: snapshot.data as GlobalSummaryModel,
                        );
              }
            }),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
