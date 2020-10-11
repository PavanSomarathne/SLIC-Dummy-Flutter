import 'package:flutter/material.dart';
import 'package:slic_dummy_flutter/models/generalinsurancedetails.dart';

import './dummygeneralinsurancedetails.dart';
//import '../widgets/models/meal.dart';

var DUMMY_GENERALINSURANCEDETAILS = [
  GeneralInsuranceDetails(
      gIid: 'g1',
      gItitle: 'Motor Plus',
      gratings: "98%",
      gIavailability: "5-40 Years",
      gIspecial: "Special",
      gIimageurl: 'images/motorplus.jpeg',
      gIbenefits1: 'Affordable insurance premiums',
      gIbenefits2: 'loyality rewards from reputed brands and companies',
      gIbenefits3: 'vehicle  can be repaired on manufacture s specification',
      gIbenefits4:
          'vehicles can repaired in SLIIC Motor plus garages without owner account',
      gIbenefits5: '24 hours Customer care service',
      gIdescrption:
          'SLIC Motor plus insurance helps you keep up with pace of today s demanding life style.This Insurance Policy is designed with vehicl agents and repair centers islandwide,ensuring 24*7 unrivaled service and coverage.The policy facilities hassle free vehicle repairs and maintainace,and also includes rewardsand benefits',
      gIeligibility1:
          'only applicable to private Cars and Dual Purpose Vehicles',
      gIeligibility2: "Vehicle Insured at current markt value"),
  GeneralInsuranceDetails(
      gIid: 'g2',
      gItitle: 'Health Plus Plan',
      gratings: "95%",
      gIavailability: "5-40 Years",
      gIspecial: "special",
      gIimageurl: 'images/healthplan.jpeg',
      gIbenefits1: 'Covers the Hospital charges',
      gIbenefits2: 'doctor fee',
      gIbenefits3: 'Medical and labortaory testing chrages',
      gIbenefits4: 'Daycare charges ',
      gIbenefits5: 'coverage for critical illnesses staarted at the inception',
      gIdescrption:
          'A unique corporate health insurance policy offers value added benefits to the corporate sector as well as goverment institutions,providing employees protection against an array of illnesses and medical expenses.',
      gIeligibility1: 'Copperate sector ss well as goverment employees',
      gIeligibility2: "Children"),
  GeneralInsuranceDetails(
      gIid: 'g3',
      gItitle: 'Annual Medical Plan',
      gratings: "maximum 50%",
      gIavailability: "5-40 Years",
      gIspecial: "exclusive",
      gIimageurl: 'images/annualmedicalplan.jpeg',
      gIbenefits1:
          'A no Claim bonus that increases the basic sum assured by 5% up to maximum of 50% for every claim free year',
      gIbenefits2:
          'Hospitalization benefits inclusive of room charges,medical practitioner fees,theatre charges,ambulance charges,maternity benefits',
      gIbenefits3:
          'Hospitalization benefits inclusive of daily allowance,medicine charges and maternity befits for government hospitals',
      gIbenefits4:
          'Benefits applicable for tretments for cataract,hernia,hysterectomy,all types of cardiac surgeries,cancer tretments and more.',
      gIbenefits5: 'Day care surgery expenses',
      gIdescrption:
          'Covering a range of health insurance needs at a highly affordable price,you can choose your best suited annual medical plan from packages based on your finacial investment.It is an annually renewable health insurance policy that comes with a highly advantageous No claim bonus that increases the basic sum assured by 5% up to a maximum of 50% for every claim free year.',
      gIeligibility1: 'You have to choose package from plan',
      gIeligibility2: "you have to prove your finacial potential"),
  GeneralInsuranceDetails(
      gIid: 'g4',
      gItitle: 'Home Protect Lite',
      gratings: "maximum 50%",
      gIavailability: "period of time",
      gIspecial: "exclusive",
      gIimageurl: 'images/homeprotect.jpeg',
      gIbenefits1: 'This plan has two packages,you can select one of them',
      gIbenefits2:
          'One package sum is assured based on the maximum damage Rs 1,000,000',
      gIbenefits3:
          'Second package sum is assured based on the maximum damage Rs 3,000,000',
      gIbenefits4: 'This plan combined both Fire and Bulglary',
      gIbenefits5: 'When damaged occured,instantly pay the amount',
      gIdescrption:
          'We have combined both Fire and Burglary insurance policies for your convenience to introduce Home Protect Lite,over the counter householders insurance product comes with 2 packages that you can purchase instantly',
      gIeligibility1: 'You have to select one package from the packages',
      gIeligibility2: "you have to prove your finacial potential"),
  GeneralInsuranceDetails(
      gIid: 'g5',
      gItitle: 'Travel Protect',
      gratings: "52%",
      gIavailability: "period of time",
      gIspecial: "exclusive",
      gIimageurl: 'images/travelprotect.jpeg',
      gIbenefits1: 'This plan designed for overseas travellers',
      gIbenefits2:
          'This plan covers widev range of emergencies that could happen any time',
      gIbenefits3:
          'This plan covers risks such as stolen luggage,unexpected medical expenses and more',
      gIbenefits4: 'Ensure the home safety',
      gIbenefits5: 'Ensure the your privcy during travel',
      gIdescrption:
          'Designed for the overseas travellers,Sri Lanka Insurance Travel Protect covers a wide range of emergencies that could take place from the point of embarkation.From risks such as stolen luggage to crises such as unexpected medical expenses abroad,Travel protect is the ideal cover that assures peace of mind during your time away from home,while also ensuring your home safety',
      gIeligibility1: 'Highly Appluicable for overseas travellers.',
      gIeligibility2: "you have to agree on certain rules as well."),
  GeneralInsuranceDetails(
      gIid: 'g6',
      gItitle: 'Trade Insurance',
      gratings: "58%",
      gIavailability: "period of time",
      gIspecial: "exclusive",
      gIimageurl: 'images/tradeinsurance.jpeg',
      gIbenefits1:
          'Covers fire and a range of allied perils including fire & lighting',
      gIbenefits2: 'Covers the malicious damge,explosion,cyclone',
      gIbenefits3:
          'Covers Storm,tempest,flood,earthquake,natural disaster and burglary',
      gIbenefits4: 'Money Insurance(cash in transit,safe and drawers)',
      gIbenefits5: 'Electronic Equipment cover,Funeral expense cover',
      gIdescrption:
          'Trade Insurance policy is ideal for shopkeepers and storeowners of retail or wholesale businesses.The trade insurance cover is segregated in to 2 sections,giving the policyholder control of customizing the policy as per requirement.',
      gIeligibility1: 'Highly Applicable for shopkeepers and storeowners',
      gIeligibility2: "You need to agree on some rules further more."),
  GeneralInsuranceDetails(
      gIid: 'g7',
      gItitle: 'Workmens Compensation',
      gratings: "78%",
      gIavailability: "based on agrrement",
      gIspecial: "normal",
      gIimageurl: 'images/workmencompensation.jpeg',
      gIbenefits1:
          'All liabilities prescribed in the Workmens Compensation Act.',
      gIbenefits2:
          'Additional Covers such as riot & Strike Cover,Terrorism Cover,Travel Cover are not prescribed in the Act.',
      gIbenefits3: 'Liability under common law',
      gIbenefits4:
          'Liability to pay compensation for injury suffered by workman',
      gIbenefits5:
          'Liability to pay compensation for occupational diseases contracted a workmen',
      gIdescrption:
          'A highly customized policy to cover employer liabilities prescribed in the last amended Workmens Compensation Act NO of 2005,to provide compensation to workmen injured during the tenure of their employment',
      gIeligibility1: 'Highly Applicable for Employees',
      gIeligibility2: "You need to agree on some rules further more."),
  GeneralInsuranceDetails(
      gIid: 'g8',
      gItitle: 'Gaurawa',
      gratings: "85%",
      gIavailability: "based on agrrement",
      gIspecial: "exclusive",
      gIimageurl: 'images/gaurawa.jpeg',
      gIbenefits1: 'Personal Accident Cover',
      gIbenefits2:
          'Reimbursement of healthcare and medical expenses in the event of sickness or accidental injuries',
      gIbenefits3: 'Critical Illness Cover for specific critical illnesses',
      gIbenefits4:
          'Reimbursement of replacement costs of bank cards,driving license,national identity card and other such personal identification documents',
      gIbenefits5:
          'Reimbursement of cab fare/ambulance charges to the hospital',
      gIdescrption:
          'Sri Lanka Insurance Gaurawa is a uniquely designed insurance cover for professionals.It is acover tailor made to meet the health,wellness and safety demands of a modern professionals rapidly paced lifestyle.',
      gIeligibility1: 'Highly Applicable for Employees',
      gIeligibility2: "You need to agree on some rules further more."),
  GeneralInsuranceDetails(
      gIid: 'g9',
      gItitle: 'Hoteliers Comprehensive Insurance',
      gratings: "78%",
      gIavailability: "based on agrrement",
      gIspecial: "special",
      gIimageurl: 'images/hotelier.jpeg',
      gIbenefits1:
          'Covers fire and range of allied perils including fire & lighting,malicious damage,explosions and more.',
      gIbenefits2: 'Fidelity guaranty cover',
      gIbenefits3: 'Personal accident cover for employees',
      gIbenefits4: 'Workmens Compensation cover ',
      gIbenefits5: 'Machinery breakdowm cover for machinery',
      gIdescrption:
          'As the tourism industry faces distintive challenges over time,we have architected a comprehensive insurance policy for hoteliers in Sri Lanka.Drawing from our decades worth of expertise in insurance,we undestand the need for hoteliers to regularly review and update their policies in keeping with external and influences',
      gIeligibility1: 'Need to prove that you are a hotelier',
      gIeligibility2: "You need to agree on some rules further more."),
];
