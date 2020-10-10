import 'package:flutter/material.dart';
import '../widgets/life_insurance_item.dart';
import '../models/dummyinsurance_data.dart';

class InsuranceSolutions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryinsurance = DUMMY_LiFEINSURANCE.where((sigleinsurance) {
      return true;
    }).toList();

    return ListView.builder(
      itemBuilder: (ctx, index) {
        return LifeInsuranceItem(
          title: categoryinsurance[index].title,
          imageurl: categoryinsurance[index].imageurl,
          bonus: categoryinsurance[index].bonus,
          eligibleAge: categoryinsurance[index].eligibleAge,
          id: categoryinsurance[index].id,
        );
      },
      itemCount: categoryinsurance.length,
    );
  }
}
