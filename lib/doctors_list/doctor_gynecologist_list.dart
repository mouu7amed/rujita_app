import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class GynecologistListPage extends StatelessWidget {
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
                  'Doctor Gynecologist\nList',
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
            'د/ صبري عبدالله المليجي',
            'Obstetrician and gynecologist',
            'assets/images/doctor2.png',
            'اخصائي النساء والتوليد، علاج تأخر الحمل ومتابعه الحمل والكشف بالسونار، إجراء العمليات الصغري والكبري وجراحه المناظير -دكتوراه النساء والتوليد.',
            'شبين الكوم -ميدان شرف - الدور الثالث علوي فوق مركز النخبه.',
            kBlueColor,
            'يوميا',
            'من 10 صباحا الي 4 مساء',
            '0124600577',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ حامد السيد اللقوه',
            'Obstetrician and gynecologist',
            'assets/images/doctor2.png',
            'استاذ النساء والتوليد والعقم جامعه المنوفيه.',
            'شبين الكوم - امام القصر العيني.',
            kBlueColor,
            'الميعاد',
            'غير معروف',
            '01094677633 / 01094677692',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ داليا صلاح صباحي',
            'Obstetrician and gynecologist',
            'assets/images/doctor3.png',
            'اخصائي النساء والتوليد والعقم.',
            'شبين الكوم - ميدان شرف - برج الفيروز - الدور الرابع.',
            kBlueColor,
            'الميعاد',
            'غير معروف',
            '01001874438',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
