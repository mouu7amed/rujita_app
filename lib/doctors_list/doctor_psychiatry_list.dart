import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class PsychiatryListPage extends StatelessWidget {
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
                  'Doctor Psychiatry\nList',
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
            'د/ دعاء سمير مطاوع',
            'اخصائي امراض والطب النفسي',
            'assets/images/doctor3.png',
            'اخصائي امراض المخ والاعصاب والطب النفسي،\nتعديل السلوك ، الادمان.\nماجستير امراض المخ والاعصاب والطب النفسي بجامعه المنوفيه.',
            'شبين الكوم - ميدان شرف - فوق صيدليه المنوفيه - الدور الرابع',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01063597756',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ مصطفي مليك',
            'Psychiatry Specialist',
            'assets/images/doctor2.png',
            'دكتور واستشاري المخ والاعصاب والطب النفسي، مدرس بكليه الطب، دكتوراه القسطره المخيه، علاج جلطات ونزيف المخ.',
            'شبين الكوم - ميدان شرف - اعلي مركز النخبه للاشعه - الدور الخامس.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01203704837',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ بدر عباس راشد',
            'Psychiatry Specialist',
            'assets/images/doctor2.png',
            'اخصائي امراض المخ والاعصاب والطب النفسي. نائب مدير مستشفي الصحه النفسيه بالخانكه.',
            'شبين الكوم -ميدان شرف -برج الفيروز -الدور الرابع.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01068148374 / 01060067814',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ محمد مسعود حجازي',
            'Psychiatry Specialist',
            'assets/images/doctor2.png',
            'اخصائي امراض نفسيه وعصبيه.',
            '1شارع الامين -ميدان شرف.',
            kOrangeColor,
            'من السبت الي الاربعاء',
            'من 2 ظهرا الي 9 مساء',
            '01201576292',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ محمد صلاح عبد الشافي',
            'Psychiatry Specialist',
            'assets/images/doctor2.png',
            'استاذ المخ والاعصاب والطب النفسي بكليه الطب والتامين الصحي. وماله الكليه الملكيه بلندن.',
            'ش المطافي - امام بنك اسكندريه.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01006977094',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
