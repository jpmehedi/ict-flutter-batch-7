import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

SliverGridDelegateWithFixedCrossAxisCount customGridDelegate() {
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.7,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  );
}

int countIngredients(List ingredients) {
  return ingredients.length;
}

void launchURL(url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
