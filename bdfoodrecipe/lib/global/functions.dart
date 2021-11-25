
import 'package:flutter/material.dart';

SliverGridDelegateWithFixedCrossAxisCount customGridDelegate() {
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 0.8,
  );
}