import 'package:flutter/material.dart';
import '../screens/general_insurance_details_screen.dart';

class GenaralInsuranceItem extends StatelessWidget {
  final String gIid;
  final String gItitle;
  final String gIimageurl;
  final String gratings;
  final String gIspecial;

  GenaralInsuranceItem(
      {this.gIid,
      this.gItitle,
      this.gIimageurl,
      this.gratings,
      this.gIspecial});
//GeneralInsuranceDetails({this.gIid});
  void selectGeneralInsurance(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return GeneralInsuranceDetails(
        gIid: gIid,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGeneralInsurance(context),
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
                    gIimageurl,
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
                      gItitle,
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
                        Text(gIspecial),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade300,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          gratings,
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
