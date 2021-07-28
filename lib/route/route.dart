import 'package:flutter/material.dart';

import 'package:project_7/bmical.dart';
import 'package:project_7/Resultpage.dart';

const String first = 'inputpage';
const String input = 'resultpage';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case first:
      return MaterialPageRoute(builder: (context) => InputPage());
      break;
    case input:
      return MaterialPageRoute(builder: (context) => resultpage());
      break;
    default:
      throw ('this route name');
  }
}
