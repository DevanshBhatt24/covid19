import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class loading extends StatelessWidget {
  final bool? inputloading;
  loading({this.inputloading});

  @override
  Widget build(BuildContext context) {
    return inputloading! ? loadingcard() : Container();
  }

  Widget loadingcard() {
    return Card(
      elevation: 1,
      child: Container(
        height: 180,
        padding: EdgeInsets.all(24),
        child: Shimmer.fromColors(
            child: Container(
              width: double.infinity,
              height: 57,
              color: Colors.white,
            ),
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!),
      ),
    );
  }
}
