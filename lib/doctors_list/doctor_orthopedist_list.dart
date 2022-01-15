import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class OrthopedistListPage extends StatelessWidget {
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
                  'Doctor Orthopedist\nList',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Doctors',
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
            'د/ هاني السيد',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            'دكتوراه جراحه العظام والكسور، استشاري مناظير الركبه والكتف واصابات الملاعب، استشاري جراحات استبدال المفاصل الصناعيه، مدرس بكليه الطب، ومستشفي الجامعه بالمنوفيه.',
            'شبين الكوم – ميدان شرف – برج الفيروز – الدور السابع.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01060200068 / 01066915159',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/احمد ندا',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            'اخصائي جراحه العظام والعمود الفقري والمفاصل، اصلاح التشوهات وقصر العظام والعيوب الخلقيه، بمستشفي شبين الكوم التعليمي،',
            'شبين الكوم - ميدان شرف - اعلي النخبه للاشعه - الدور الثاني.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01002415125 / 01111154251',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ عبد الرحمن عفيفي',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            'دكتوراه في جراحه العظام والعمود الفري.',
            'شبين الكوم -ميدان شرف -برج الفيروز.',
            kOrangeColor,
            'السبت والاربعاء',
            'غير معروف',
            '01000964671',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
