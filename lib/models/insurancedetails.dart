class InsuranceDetails {
  final String id;
  final String title;
  final String imageurl;
  // final List<String> descrption; //dan tiyena eka
  final String descrption;
  final String benefits1;
  final String benefits2;
  final String benefits3;
  final String benefits4;
  final String benefits5;
  //dan tiyena eka
  final String eligibility1;
  final String eligibility2; //dan tiyena eka
  final String eligibleAge;
  final String availability; //policy avalable period
  final String bonus;

  InsuranceDetails(
      {this.id,
      this.title,
      this.imageurl,
      this.descrption,
      this.benefits1,
      this.benefits2,
      this.benefits3,
      this.benefits4,
      this.benefits5,
      this.eligibility1,
      this.eligibility2,
      this.eligibleAge,
      this.availability,
      this.bonus});
}
