import '../../models/location.dart';
import 'screens/location_detail/location_detail.dart';

import 'screens/locations/locations.dart';
import 'package:flutter/material.dart';

import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText2: BodyTextStyle,
        ),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
        screen = Locations();
        break;
        case LocationDetailRoute:
        screen = LocationDetail(arguments[id]); 
      }
  
    }
  }
}
// 