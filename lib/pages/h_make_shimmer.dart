import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HMakeShimmer extends StatelessWidget {
  const HMakeShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: 100,
        color: Colors.white,
      ),
    );
  }
}
