import 'screens/locations/locations.dart';
import 'package:flutter/material.dart';

import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Locations(),
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
}
// 