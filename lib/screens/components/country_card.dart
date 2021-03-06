import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class CountryCard extends StatelessWidget {
  final String country, timeZone, iconSrc;

  const CountryCard({Key key, @required this.country, @required this.timeZone, @required this.iconSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _period = TimeOfDay.now().period == DayPeriod.am ? 'AM' : 'PM';

    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(233),
        child: AspectRatio(
            aspectRatio: 1.32,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Theme.of(context).primaryIconTheme.color)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      country,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(
                          fontSize: getProportionateScreenWidth(16)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('UTC$timeZone'),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset(iconSrc, width: getProportionateScreenWidth(40), color: Theme.of(context).accentIconTheme.color,),
                        Spacer(),
                        Text(
                          '${DateTime.now().add(Duration(hours: int.parse(timeZone) - 1)).hour}:${DateTime.now().minute}',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        RotatedBox(quarterTurns: 3, child: Text(_period))
                      ],
                    )
                  ]),
            )),
      ),
    );
  }
}
