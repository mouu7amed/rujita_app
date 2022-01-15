import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class DentalListPage extends StatelessWidget {

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
                  'Doctor Dental\nList',
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
            'د/ ضياء أحمد رمضان أحمد',
            'Dental Specialist',
            'assets/images/doctor2.png',
            'اخصائي طب وجراحه الفم والاسنان، دبلوم جراحه الفم والاسنان جامعه القاهره، تركيب الاسنان ،زراعه الاسنان، جميع الحشوات، تبييض وتجميل الاسنان. الكشف شامل الاشعه.',
            'شبين الكوم – ميدان شرف – ش الامين. امام معمل النخبه – برج الانوار المحمديه – الدور الرابع.',
            kBlueColor,
            'كل يوم ما عدا الجمعة',
            'من 4 مساء الي 10 مساء',
            '01022872815',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ عصام محمود سعيد',
            'Dental Specialist',
            'assets/images/doctor2.png',
            'استشاري جراحه الفم والاسنان وجراحه الفكين، زماله جراحه الوجه والفكين بمستشفي شبين الكوم التعليمي.',
            'شبين الكوم - ميدان شرف - اعلي مركز النخبه - الدور الثالث علوي.',
            kBlueColor,
            'يوميا',
            'من 1 مساء الي 5 مساء',
            '0105416176',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
