import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class LapsPage extends StatelessWidget {
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
                  'Laboratories\nList',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Laboratories',
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
            'Chare lab',
            'كير لاب للتحاليل الطبيه',
            'assets/labsIcon.png',
            'مركز كير لاب للتحاليل الطبيه.\n احدث الاجهزه الطبيه من اجل راحه وسلامه اكثر.',
            'شبين الكوم - ميدان شرف - برج الفيروز - الدور الاول علوي.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01012971914',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'الحكيم ميديكال',
            'لاجهزة الشلل والاطراف الصناعيه',
            'assets/labsIcon.png',
            'اجهزه شلل.\nاطراف صناعيه.\nمساعدات حركه.',
            'شبين الكوم - ميدان شرف - ش الامين.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01017942280',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'شركه الفتح للمعامل',
            'لاجهزه الكمياء وصور الدم',
            'assets/labsIcon.png',
            'اجهزه الكمياء وصور الدم.\nمستلزمات معامل التحاليل.\nكيماويات ومستلزمات الابحاث الطبيب.',
            'شبين الكوم - ميدان شرف - ش الامين.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01272696252',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'مركز الفاروق',
            'علاج طبيعي واصابات ملاعب',
            'assets/labsIcon.png',
            'علاج طبيعي واصابات ملاعب.\nد/ احمد فاروق غازي.',
            'شبين الكوم - ميدان شرف - ش الامين\nامام مركز النخبه - برج الانوار المحمديه - الدور الارضي.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '2222032',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'مركز شفاء',
            'علاج طبيعي وتخسيس',
            'assets/labsIcon.png',
            'علاج طبيعي وتخسيس.\nاحدث انظمه الريجيم وجلسات زياده معدل الحرق.\nد/ احمد فتحي الجندي.',
            'شبين الكوم - ش مدرسه الاعداديه القديمه بجوار الغنمي مول - بجوار ش الذهب.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01003775905',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'مركز الوفاء والاخلاص',
            'للتخاطب وتنميه المهارات',
            'assets/labsIcon.png',
            'تعديل السلوك.\nالارشاد النفسي.\nد/محمد فوزي، استشاري الصحه النفسيه وامراض التخاطب.',
            'شبين الكوم - ميدان شرف - ش الامين.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01015937837',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'سوق القصر العيني',
            'للمستلزمات الطبيه',
            'assets/labsIcon.png',
            'مستلزمات طبيه.\nمستلزمات طب الاسنان.\nاداره /حسين عبدالله.',
            'شبين الكوم - ميدان شرف - برج الفيروز - الدور الارضي.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01223784044',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'معمل ابن سيناء',
            'للتحاليل الطبيه الكميائيه',
            'assets/labsIcon.png',
            'التحاليل الطبيه الكميائيه.\nد/اكرام اسعد ابراهيم، بكالريوس علوم جامعه المنوفيه، دبلومه الكمياء الحيويه.',
            'شبين الكوم - ميدان شرف - برج الفيروز.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01004346254',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'مركز تقويم الاسنان',
            'لتقويم الاسنان',
            'assets/labsIcon.png',
            'استاذ دكتور/ايمان مصطفي الشوربجي.\nداستاذ ورئيس قسم تقويم الاسنان جامعه طنطا.',
            'شبين الكوم - ميدان شرف - برج الفيروز - الدور الثاني.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01004346254',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
