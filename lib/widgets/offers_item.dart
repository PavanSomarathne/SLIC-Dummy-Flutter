import 'package:flutter/material.dart';

class OffersItem extends StatelessWidget {
  var offersItem;

  OffersItem(this.offersItem);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            offersItem['url'] == null
                ? Image.asset(
                    'images/placeholder.png',
                    fit: BoxFit.fill,
                    height: (height - kToolbarHeight) * 0.22,
                    width: width,
                  )
                : Image.network(offersItem['url'],
                    fit: BoxFit.fitWidth,
                    height: (height - kToolbarHeight) * 0.22,
                    width: width),
            SizedBox(height: 8),
            Text(
              offersItem == null
                  ? 'Lorem ipsum dolor sit amet, cdfdfdf '
                  : offersItem['title'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              offersItem == null
                  ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                  : offersItem['news'],
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              Icon(
                Icons.access_time_sharp,
                size: 25.0,
                color: Colors.black38,
              ),
              Text(
                offersItem == null ? '2020/09/11' : offersItem['date'],
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
