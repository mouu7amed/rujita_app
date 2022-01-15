import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class EyeListPage extends StatelessWidget {
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
                  'Doctor Eye\nList',
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
            'د/ محمد سامي عبد العزيز',
            'Eye Specialist',
            'assets/images/doctor2.png',
            'دكتوراه طب وجراحه العين، مدرس واستشاري جراحه العيون بجامعه المنوفيه.',
            'شبين الكوم –ميدان شرف –امام مركز النخبه –برج الانوار المحمديه.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01067065933',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ حاتم محمد مرعي',
            'Eye Specialist',
            'assets/images/doctor2.png',
            'دكتوراه طب وجراحه العيون، استشاري جراحات عيون الاطفال والحول، مدرس بكليه الطب جامعه المنوفيه.',
            'ميدان شرف - برج مركز النخبه للاشعه.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            'unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ فريد محمد وجدي',
            'Eye Specialist',
            'assets/images/doctor2.png',
            'عضو الاكاديميه الامريكيه، لجراحه العيون وتصحيح النظر بالليزك، دكتوراه واستشاري العيون.',
            'شبين الكوم - برج المحكمه  -ميدان شرف - الدور الرابع - اما صيدليه الشيخ.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01026838371',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ حسن جمال الدين فرحات الاشقر',
            'Eye Specialist',
            'assets/images/doctor2.png',
            'استاذ طب وجراحه العيون، كليه الطب -جامعه المنوفيه.',
            'شبين الكوم - ميدان شرف - عماره اللبني.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01009048284',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ محمد جعفر',
            'Eye Specialist',
            'assets/images/doctor2.png',
            'زميل الكليه الملكيه للجراحيين بادنبره، دكتوراه طب وجراحه العين -جامعه القاهره.',
            'شبين الكوم - ميدان شرف - برج الزهراء.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01028470040',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
