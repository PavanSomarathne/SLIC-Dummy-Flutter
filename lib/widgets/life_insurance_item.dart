import 'package:flutter/material.dart';
import '../models/insurancedetails.dart';
import '../screens/life_insurance_details_screen.dart';

class LifeInsuranceItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  final String eligibleAge;
  final String bonus;

  LifeInsuranceItem(
      {this.title, this.bonus, this.eligibleAge, this.imageurl, this.id});

  void selectLifeInsurance(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return LifeInsuranceDetails(
        id: id,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectLifeInsurance(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageurl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.event_available),
                        SizedBox(
                          width: 6,
                        ),
                        Text(eligibleAge),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.new_releases),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          bonus,
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
