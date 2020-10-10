import 'package:flutter/material.dart';
import '../widgets/general_insurance_item.dart';
import '../models/dummygeneralinsurancedetails.dart';

class GeneralInsuranceSolutions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categorygeneralInsurance =
        DUMMY_GENERALINSURANCEDETAILS.where((sigleinsurance) {
      return true;
    }).toList();

    return ListView.builder(
      itemBuilder: (ctx, index) {
        return GenaralInsuranceItem(
          gItitle: categorygeneralInsurance[index].gItitle,
          gIimageurl: categorygeneralInsurance[index].gIimageurl,
          gIspecial: categorygeneralInsurance[index].gIspecial,
          gratings: categorygeneralInsurance[index].gratings,
          gIid: categorygeneralInsurance[index].gIid,
        );
      },
      itemCount: categorygeneralInsurance.length,
    );
  }
}
