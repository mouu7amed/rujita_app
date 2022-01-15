import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class HeartlListPage extends StatelessWidget {
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
                  'Doctor Heart\nList',
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
                  'Labs',
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
            'د/ محمد عاصم علام',
            'Heart Specialist',
            'assets/images/doctor2.png',
            'اخصائي القلب والقسطره، بمعهد القلب القومي القاهره و عيادات التأمين الصحي بالمنوفيه.',
            'شبين الكوم – ميدان شرف – برج الفيروز – الدور الثاني علوي.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01023413053 / 01073391959',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ ايهاب كمال المليجي',
            'Heart Specialist',
            'assets/images/doctor2.png',
            'دكتوراه واستشاري امراض القلب وقسطره القلب، بمستشفي شبين الكوم التعليمي.',
            'شبين الكوم - ميدان شرف - اعلي صيدليه الجندي الجديده.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01061198006',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ رحاب ابراهيم ياسين',
            'Heart Specialist',
            'assets/images/doctor3.png',
            'دكتوراه امراض القلب، استاذ مساعد –امراض القلب والشرايين.',
            'شبين الكوم – ميدان شرف - ش الامين.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01062320347',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ تامر الاشقر',
            'Heart Specialist',
            'assets/images/doctor2.png',
            'دكتوراه القلب والاوعيه الدمويه، عضو الجمعيه الاوروبيه لامراض القلب، اخصائي القلب والقسطره التداخليه بمعهد القلب القومي.',
            'شبين الكوم - برج النخبه.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01024327749',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
