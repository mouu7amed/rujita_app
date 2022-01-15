import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class DermatologistListPage extends StatelessWidget {
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
                  'Doctor Dermatologist\nList',
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
            'د/ مني حسان دوام',
            'Dermatologist Specialist',
            'assets/images/doctor3.png',
            'اخصائيه الجليه والتجميل والليزر',
            'شبين الكوم - ميدان شرف - برج الفيروز - الدور السادس.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01063040405',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ احمد عبد الوهاب صالح',
            'Dermatologist Specialist',
            'assets/images/doctor2.png',
            'دكتوراه الامراض الجلديه والتناسليه، استاذ الامراض الجلديه والتناسليه والضعف الجنسي بجامعة بنها.',
            'شبين الكوم - ميدان شرف - ش الامين.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01006941548 / 0482235903',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
