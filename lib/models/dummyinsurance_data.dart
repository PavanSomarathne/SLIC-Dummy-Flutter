import 'package:flutter/material.dart';

import './insurancedetails.dart';
//import '../widgets/models/meal.dart';

var DUMMY_LiFEINSURANCE = [
  InsuranceDetails(
      id: 'm1',
      title: 'Divi Thilina',
      eligibleAge: "Adults",
      availability: "5-40 Years",
      bonus: "Annual Bonus",
      imageurl: 'images/divithilina.jpeg',
      benefits1: 'Policy terms from 5 -40 Years',
      benefits2: 'Flexible range of payment options',
      benefits3: 'High bonuses',
      benefits4: 'Covers such as Illness,Hospitalization',
      benefits5: 'Compentation on death',

      //descrption: [
      //  'A Unique life Insurance Solutions with flexible payment for complete protection',
      // 'Highest bonuses on maturity',
      // 'Adapting to your rapidly changing life style',
      // 'Divi Thilina is designed to complement any income level',
      // 'Divi Thilina is also expandable to accommadate a range of  other benefits',
      // ],
      descrption:
          'Do  not fixed premium hold you back from investing in your life.Introducing the Divi ThilinaProtection Plan ,a Unique life insurance solution with flexible payment schemas that offer complete protection and highest bonuses on maturity.Divi Thilina is designed forfor any income level or finacial commitement.and is also expandable to accommodate arange of othermultiplebenefits and covers  ',
      eligibility1: 'Adults between the ages of 18 to 65 years',
      eligibility2: "Ideal for any income levels"),
  InsuranceDetails(
      id: 'm2',
      title: 'Freedom',
      eligibleAge: "Adults",
      availability: "5-40 Years",
      bonus: "5% annually",
      imageurl: 'images/freedom.jpeg',
      benefits1: '5% increse of granteed retirement income on compound basis',
      benefits2:
          'An annual healthcare payment that is 5 times the monthly retirement income(This also increass by 5% on compound basis',
      benefits3: 'Policy terms from 5 - 40 Years',
      benefits4:
          'Additional Covers such as Critical Illness,Hospitalization and e.t.c ',
      benefits5: 'Compentation on death',

      // descrption: [
      //  'Ensure that your post retirement plan will continue to be stress free',
      // 'Ability to claim up to 5 times your pansion without submitting hospital or medical bills',
      // 'More, Your Income will also be increased by 5% annually on compound interest',
      // 'Freedom has highly flexible premium payment options such as monthly,anuualy and e.t.c'
      //   'Additional Covers such as Critical Illness,Hospitalization and e.t.c ',
      // ],
      descrption:
          'Ensure that your post retirement lifestyle will continue to be stress free and hassle free by investing in the ideal retirement plan today.This retirement plan providing monthly income to be financially independent alongside the ability claim up to 5 times.',
      eligibility1: 'Retired employers',
      eligibility2: "For Adults"),
  InsuranceDetails(
      id: 'm3',
      title: 'Jana Diri',
      eligibleAge: "Adults",
      availability: "10-40 Years",
      bonus: "cumulative bonus",
      imageurl: 'images/janadiri.jpeg',
      benefits1: 'Comprehensive protection plan',
      benefits2: 'Minimum sum assured as low as LKR 10,000',
      benefits3: 'Policy terms from 10 - 40 Years',
      benefits4: 'Flexible range of payment options ',
      benefits5:
          '100% total sum assured plus cumulative bonus guaranteed at maturity',

      // descrption: [
      //   'Jana Diri is an insurance plan for those belongings to agriculture,tourism or any other',
      //  'Suitable for peopel who follow seasonal income cycles',
      //  'This is enable life protection even when  your premium is 2 years overdue',
      // ],
      descrption:
          'A tailor made life indsurance policy that enables those seasonal incomes to recap unrivaled benefits all year long!. Jana Diri is an insurance plan taht provides completeprotection for life even when your premium is 2 years overdue.This makes Jana Diri the ideal life insurance plan forthose beleongings to agriculture or any other sector that follow seasonal income cycles.',
      eligibility1: 'adultes ages between 18 to 60 years',
      eligibility2: 'Ideal for Seasonal incomers'),
  InsuranceDetails(
      id: 'm4',
      title: 'Minimuthu Daayada',
      eligibleAge: "children",
      availability:
          "Policy terms from 5 - 17 years depending on the childs age",
      bonus: "125%",
      imageurl: 'images/minimuthudayada.jpeg',
      benefits1:
          'Unrivaled maturity benefit of 125% of the sum assured spread over a payment period of 5 yers from maturity',
      benefits2:
          'Investment returns to start upon the child reaching 18 years old and policy terms from 5-17 years',
      benefits3:
          'LKR 1,000 per day hospitalization cash benefit cover for the child in case of hospitalization due to an accident or sickness',
      benefits4:
          'Natural dealth of a parent during the premium paying term immediately entitles the child to 5 times the sum assured with cumulative bonuses,and a waive off of all further premiums',
      benefits5:
          'Expandable with additional covers such as Illness,Health and funeral covers',

      // descrption: [
      //   'Jana Diri is an insurance plan for those belongings to agriculture,tourism or any other',
      //  'Suitable for peopel who follow seasonal income cycles',
      //  'This is enable life protection even when  your premium is 2 years overdue',
      // ],
      descrption:
          'Set a Strong,resilent foundation for your child s future today with the Minimuthu Dayada insurance policy.Specially designed to ensure your childrecieves highly beneficial returns at an affordable premium,Minimuthu Dayada guarantees an attractive 125% sum assured on maturity,strategically spread over a fund payment period of years from the date of maturity',
      eligibility1: 'Child age is neeeded to aprove age below 18',
      eligibility2: 'Some bonuses are calcualted based on conditions'),
  InsuranceDetails(
      id: 'm5',
      title: 'Minimuthu Parithyaga',
      eligibleAge: "children",
      availability: "10 to 24 Years",
      bonus: "Cumulative bonuses",
      imageurl: 'images/minimuthuparithyaga.jpeg',
      benefits1:
          'Parents can decide a period between 18-25 years oduring which the child will require financial assistance for higher education',
      benefits2:
          'Loss of the parent during the premium paying,immediately entitles the child to the total sum assured and waive off of all premiums',
      benefits3:
          'Your child is eligible for the slic arogaya hospitalization Cover and Jeevaka Critical Illness Covwr',
      benefits4:
          'Natural dealth of a parent during the premium paying term immediately entitles the child to 5 times the sum assured with cumulative bonuses,and a waive off of all further premiums',
      benefits5:
          'Expandable with additional covers such as Illness,Health and funeral covers',

      // descrption: [
      //   'Jana Diri is an insurance plan for those belongings to agriculture,tourism or any other',
      //  'Suitable for peopel who follow seasonal income cycles',
      //  'This is enable life protection even when  your premium is 2 years overdue',
      // ],
      descrption:
          'Don t let exorbitant premiums stop you from safeguading your child s future.With the Minimuthu Parithyaga Children s Plan, we support your child with alow,highly affordable premium.Now you too can gift your child their dream for a brighter future with this plan',
      eligibility1:
          'The policy can be obtained by parents between ages of 18 to 60 years',
      eligibility2: 'Minimum sum assured should be LKR 50,000'),
  InsuranceDetails(
      id: 'm6',
      title: 'Praguna',
      eligibleAge: "18 to 60 Age Adults",
      availability: "10,15,20,25,30,35 to 40 Years",
      bonus: "5%",
      imageurl: 'images/praguna.jpeg',
      benefits1:
          'Guaranteed annual increase of the sum assured by 5% at no added cost',
      benefits2:
          'Increased sum plus cumulative bonus for basic sum guranteeed at maturity',
      benefits3: 'Highly flexible range of premium payment options',
      benefits4:
          'Expandable with additional covers for enhanced protection such as Critical,Spouse Cover and Many more.',
      benefits5:
          'Compensation on death for dependents will be twice in increased sum plus cumulative bonus',

      // descrption: [
      //   'Jana Diri is an insurance plan for those belongings to agriculture,tourism or any other',
      //  'Suitable for peopel who follow seasonal income cycles',
      //  'This is enable life protection even when  your premium is 2 years overdue',
      // ],
      descrption:
          'When thinking of long term investment opputunities that will set you for life,look no further than the Praguna Life Insurance policy.Your sum assured will be increased annually by 5% while your premium remains the same,so that in 20 years,you will recieve double your basic sum in return',
      eligibility1:
          'Adults between the ages o 18 to 60 years are eligible for the praguna High Returns Plan',
      eligibility2: 'Need to agree some conditions'),
  InsuranceDetails(
      id: 'm7',
      title: 'Yasa Isuru',
      eligibleAge: "18 to 60 Age Adults",
      availability: "10,15 to 20 Years",
      bonus: "50%",
      imageurl: 'images/yasaisuru.jpeg',
      benefits1:
          'Enjoy up to 50% of basic sum assured in 2 advance payments before maturity(50% for 10 year plan and 40% for 15-20year plan)',
      benefits2:
          'Remainder of sum assured paid on maturity with cumulative bonus calculated on original sum assured',
      benefits3:
          'Compensation on death for dependents will be the entire sum assured plus cumulative bomus, regardless of any advance payment made.',
      benefits4:
          'Policy terms available from 10,15 to 20 years with flexible range of premium payament options',
      benefits5:
          'Expandable with additional covers for enhanced protection such as Critical,Spouse Cover and Many more.',
      descrption:
          'A unique life insurance that is specially designed to address the demand for early returns,Yasa Isuru is the ideal plan for those looking to found other long term investments such as your higher education,your own home,a brand new vehicle or your dreamwedding.With Yasa Isuru,you can recieve up to 50% of the basic sum assured beforethe policy matures',
      eligibility1:
          'Adults between the ages of 18 to 60 years are eligible for the Yasa Isuru Plan',
      eligibility2:
          'Ideal for young professionals setting long-term life goals'),
  InsuranceDetails(
      id: 'm8',
      title: 'Wealth Plus',
      eligibleAge: "18 to 60 Age Adults",
      availability: "10,15 to 20 Years",
      bonus: "50%",
      imageurl: 'images/wealthplus.jpeg',
      benefits1:
          '5 year short term premium paying period with policy terms available for 10,15 or20 years',
      benefits2:
          'original sum is increased by 5% each year on simple interest basis ',
      benefits3: 'High flexible range of premium payment options',
      benefits4:
          'Compensation on death for dependents will be 125% of the increased sum plus cumulative bonus',
      benefits5:
          'Expandable with additional covers for enhanced protection such as Critical,Spouse Cover and Many more.',
      descrption:
          'We have combined the benefits of a short term premium payment with long term comprehensive protection to bring you Wealth Plus,a limited premium plan designed with highly rewarding maturity benefits.What is more, your original sumassured will increase by % each year on simple interest basis,so that in 20 years you will interest basis,so that in 20 years you will recieve double your sum in return.',
      eligibility1:
          'Adults between the ages of 18 to 60 years are eligible for the Yasa Isuru Plan',
      eligibility2: 'Minimum sum assured should be LKR 100,000'),
  InsuranceDetails(
      id: 'm9',
      title: 'Comprehensive Health Plus',
      eligibleAge: "18 to 60 Age Adults",
      availability: "5,40 years",
      bonus: "25% to 100%",
      imageurl: 'images/comprehensivehealth.jpeg',
      benefits1:
          'The best afforadable health plan in Sri Lanka with a medical cover up to LKR 50 million',
      benefits2:
          'Policy covers starting from LKR 100,000 for Category A, LKR 2,500,000 for category B and LKR 15,000,000 for category C.',
      benefits3: 'Covers you,Your spouse and upto 5 dependent children',
      benefits4:
          'children are entitled to be included in the cover up to the age of 23',
      benefits5:
          'Expandable with additional covers for enhanced protection such as Critical,Spouse Cover and Many more.',
      descrption:
          'A comprehensive health policy that covers surgical,medical and hospitalization expenses in Sri Lanka as well as overseas up to LKR 50 million. Policyholders can choose from 3 avaialble packages depending on the required georaphical coverage or medical requirement.Category A plan is Sri Lanka only and Category B is Sri Lanaka,India,Singapore,Thailand and Malasia.Category C is Worldwide option. ',
      eligibility1:
          'The policy must be obtained together with a mandotory slic life insurance policy. ',
      eligibility2:
          'Aduts between the ages of 18 to 60 years with the cover ceasing at the age of 70 can obtain the Comprehensive Plus cover.'),
];
