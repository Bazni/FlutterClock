import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Spezet, France',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                CountryCard(
                    country: 'New York, USA',
                    timeZone: '-5',
                    iconSrc: 'assets/icons/Liberty.svg'),
                CountryCard(
                    country: 'Sydney, Australie',
                    timeZone: '+11',
                    iconSrc: 'assets/icons/Sydney.svg')
              ]),
            )
          ],
        ),
      ),
    );
  }
}
