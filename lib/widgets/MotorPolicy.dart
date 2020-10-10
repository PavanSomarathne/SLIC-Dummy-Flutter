import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//commntt
class MotorPolicy extends StatelessWidget {
  var policy;
  MotorPolicy(this.policy);
//motor policy
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    return Container(
      width: (width / 2) - 10,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          gradient: policy != null && policy['stat'] != 'EXPIRED'
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.mirror,
                  colors: [
                      Color.fromRGBO(255, 27, 10, 1),
                      Color.fromRGBO(255, 105, 36, 1),
                    ])
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.mirror,
                  colors: [
                      Colors.grey,
                      Colors.blueGrey,
                    ]),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    policy['name'] == null ? "Divi Thilina" : policy['name'],
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Icon(
                    MdiIcons.car,
                    size: 40,
                    color: Colors.white,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Policy NO : ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    policy['no'] == null ? "Policy NO : " : policy['no'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Status : ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    policy['stat'] == null ? "INFORCE" : policy['stat'],
                    style: TextStyle(
                        color: policy != null && policy['stat'] != 'EXPIRED'
                            ? Colors.white
                            : Colors.red[700],
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              new Divider(
                color: Colors.blue,
              ),
              Text(
                "Matures In ${policy['y']} Years",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
