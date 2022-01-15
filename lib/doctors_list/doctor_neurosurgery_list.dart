import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class NeurosurgeryListPage extends StatelessWidget {
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
                  'Doctor Neurosurgery\nList',
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
            'د/احمد فتحي شيحه',
            'Neurosurgery Specialist',
            'assets/images/doctor2.png',
            'دكتوراه واستشاري جراحه المخ والاعصاب والعمود الفقري بجامعه عين شمس. دكتوراه جراحه المخ والاعصاب والعمود الفقري وعلاج جلطات المخ ونزيف المخ واورام المخ والانزلاق الغضروفي.',
            'شبين الكوم – ميدان شرف – الدور الثالث علوي فوق مركز النخبه.',
            kYellowColor,
            'الاحد والثلاثاء من 1 الي 3 ظهرا',
            'الاتنين و الخميس من 7 الي 9 مساء',
            '0106601423 / 0482333778',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/محمد نبيل المرواني',
            'Neurosurgery Specialist',
            'assets/images/doctor2.png',
            'دكتوراه المخ والاعصاب والقسطره المخيه، علاج الانزلاق الغضروفي بدون جراحه، علاج جلطات ونزيف المخ بالقسطره.',
            'شبين الكوم -ميدان شرف -امام مركز النخبه للاشعه.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01092772600',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ هيثم البلتاجي',
            'اNeurosurgery Specialist',
            'assets/images/doctor2.png',
            'استاذ جراحه المخ والاعصاب والعمود الفقري. بكليه الطب -جامعه المنوفيه.',
            'شبين الكوم -ميدان شرف -ش الامين.',
            kYellowColor,
            'يوميا',
            'من 5 مساء الي 10 مساء',
            '01065420974',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
