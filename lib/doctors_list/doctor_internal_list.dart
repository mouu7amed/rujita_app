import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class InternalListPage extends StatelessWidget {
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
                  'Doctor Internal\nList',
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
            'د/ شيد عبدالخالق',
            'Internal Specialist',
            'assets/images/doctor2.png',
            'دكتوراه واستشاري امراض الباطنه والقلب. رئيس اقسام الباطنه ووحده العنايه المركزه بمستشفي شبين الكوم التعليمي.',
            'شبين الكوم – ميدان شرف – الدور الخامس اعلي مركز النخبه.',
            kBlueColor,
            'من السبت الي الاربعاء',
            'من 3 مساء الي 10 مساء',
            '01008969826 / 01061236372',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ ابراهيم شحاته المدبوح',
            'Internal Specialist',
            'assets/images/doctor2.png',
            'استشاري الباطنه و القلب والاوعيه الدمويه، مدرس بكليه الطب واستشاري بالتامين الصحي.',
            'شبين الكوم – ميدان شرف – الدور التاني – اعلي مركز النخبه.',
            kBlueColor,
            'يوميا',
            'من 12 الي 3 ظهرا + من 6 الي 11 مساء',
            '01097019666',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ علي محمد الخولي',
            'Internal Specialist',
            'assets/images/doctor2.png',
            'دكتوراه الباطنه العامه، مدرس واستشاي امراض الدم والمناعه والروماتيزم بكليه الطب ومستشفي العربي الدولي.',
            'غير معلوم.',
            kBlueColor,
            'الميعاد',
            'غير معروف',
            '01099257922',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/شريف الشافعي',
            'Internal Specialist',
            'assets/images/doctor2.png',
            'باطنه وغدد صماء وسكر، زماله الكليه الملكيه البريطانيه لامراض لامراض الباطنه.',
            'شبين الكوم - ميدان شرف - اعلي برج النخبه.',
            kBlueColor,
            'الميعاد',
            'غير معروف',
            '01062527667',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/محمد جمال الناظر',
            'Internal Specialist',
            'assets/images/doctor2.png',
            'ماجيستير امراض الباطنه والقلب ومتابعه السكر والضغط.',
            'شبين الكوم ميدان شرف -برج النخبه.',
            kBlueColor,
            'الميعاد',
            'غير معروف',
            '01063719097',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
