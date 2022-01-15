import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class PharmacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Pharmacies\nList',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Pharmacies',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
          'صيدليه الشيخ',
          'لجميع المستلزمات الطبيه',
          'assets/pharmacyIcon.png',
          'لا يوجد معلومات حول الصيدليه.',
          'شبين الكوم - ميدان شرف.',
          kBlueColor,
          'يوميا',
          'من 9 صباحا الي 12 مساء',
          'Unknown phone number.',
      ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه المنوفيه',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - ميدان شرف.',
            kBlueColor,
            'يوميا',
            'طوال اليوم 24 ساعه',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه علام',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم بجوار مستشفي شبين الكوم التعليمي ',
            kBlueColor,
            'يوميا',
            'من 9 صباحا الي 12 مساء',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه المصريه',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - امام عمر افندي',
            kBlueColor,
            'يوميا',
            'طوال اليوم 24 ساعه',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه العبد',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - بجوار مستشفي الجامعه',
            kBlueColor,
            'يوميا',
            'من 8 صباحا الي 12 مساء',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه الدكتور قدري',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - بجوار مستشفي الجامعه',
            kBlueColor,
            'يوميا',
            'من 9 صباحا الي 12 مساء',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه الظريف',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - بجوار مجمع المواقف',
            kBlueColor,
            'يوميا',
            'طوال اليوم 24 ساعه',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه المرسي',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم خلف البنك الاهلي',
            kBlueColor,
            'يوميا',
            'من 9 صباحا الي 12 مساء',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه العزبي',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - بجوار بنزينه الباجوري.',
            kBlueColor,
            'يوميا',
            'طوال اليوم 24 ساعه',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'صيدليه عبدالله',
            'لجميع المستلزمات الطبيه',
            'assets/pharmacyIcon.png',
            'لا يوجد معلومات حول الصيدليه.',
            'شبين الكوم - امام حديقه العلياء',
            kBlueColor,
            'يوميا',
            'من 9 صباحا الي 12 مساء',
            'Unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
