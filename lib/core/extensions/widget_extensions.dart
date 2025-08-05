import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension WidgetExtensions on Widget {
  Widget withShimmer({required bool isLoading}) {
    if (!isLoading) return this;

    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: this,
    );
  }
}
