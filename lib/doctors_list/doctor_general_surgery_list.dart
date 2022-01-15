import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class GeneralSurgeryListPage extends StatelessWidget {
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
                  'Doctor General Surgery\nList',
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
            'د/ علاء السيسي',
            'General Surgeon',
            'assets/images/doctor2.png',
            'استاذ الجراحه والاورام، جراحات اورام الجهاز الهضمي والقولولون والشرج والثدي والرأس والرقيه والغدد.',
            'شبين الكوم – ميدان شرف - برج الحكمه – فوق بي تك.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01221746510',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ فؤاد زناتي',
            'General Surgeon',
            'assets/images/doctor2.png',
            'دكتوراه واستشاري جراحات ومناظير الكلي والبروستاتا والمسالك البوليه - كليه الطب –مستشفيات جامعه المنوفيه.',
            'شبين الكوم – ميدان شرف – برج الفيروز – الدور الرابع علوي.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01227156779',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ حاتم محمود سلطان',
            'General Surgeon',
            'assets/images/doctor2.png',
            'استشاري الجراحه العامه وجراحه الجهاز الهضمي، استشاري جراحه المناظير والقنوات المراريه، بكليه الطب – جامعه المنوفيه.',
            'شبين الكوم – برج الفيروز – الدور الرابع علوي – ميدان شرف.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            'unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ محمود حجاج',
            'General Surgeon',
            'assets/images/doctor2.png',
            'مدرس واستشاري الجراحه العامه والاورام، دكتوراه جراحه الاورام والمناظير.',
            'شبين الكوم – ميدان شرف – برج الفيروز – الدور السابع علوي.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            'unknown phone number.',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ فيصل محمد جوده',
            'اGeneral Surgeon',
            'assets/images/doctor2.png',
            'استشاري الجراحه العامه والمناظير والشرج.',
            'شبين الكوم – ميدان شرف – الدور التاني اعلي مركز النخبه.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01028830732',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
