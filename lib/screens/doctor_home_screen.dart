import 'package:rujita_app/components/doctor_category_card.dart';
import 'package:rujita_app/components/doctor_card.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rujita_app/doctors_list/doctor_dental_list.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:rujita_app/doctors_list/doctor_dermatologist_list.dart';
import 'package:rujita_app/doctors_list/doctor_eye_list.dart';
import 'package:rujita_app/doctors_list/doctor_general_surgery_list.dart';
import 'package:rujita_app/doctors_list/doctor_gynecologist_list.dart';
import 'package:rujita_app/doctors_list/doctor_heart_list.dart';
import 'package:rujita_app/doctors_list/doctor_internal_list.dart';
import 'package:rujita_app/doctors_list/doctor_neurosurgery_list.dart';
import 'package:rujita_app/doctors_list/doctor_orthopedist_list.dart';
import 'package:rujita_app/doctors_list/doctor_psychiatry_list.dart';
import 'package:rujita_app/doctors_list/doctor_urologist_list.dart';
import 'package:rujita_app/services/search_service.dart';

class DoctorPage extends StatelessWidget {
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
                  'Find Your Desired\nDoctor',
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
                //search widget
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: kSearchBackgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                          showSearch(context: context, delegate: DoctorItemSearch());
                        },
                        child: TextField(
                          autofocus: false,
                          enabled: false,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search by name',
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        onPressed: () {
                          showSearch(context: context, delegate: DoctorItemSearch());
                        },
                        color: kOrangeColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
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
              buildCategoryList(context),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
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

  buildCategoryList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          InkWell(
            child: CategoryCard(
              'Dental\nSpecialist',
              'assets/icons/dental_surgeon.png',
              kBlueColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DentalListPage())),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: CategoryCard(
              'Heart\nSpecialist',
              'assets/icons/heart_surgeon.png',
              kYellowColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => HeartlListPage())),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: CategoryCard(
              'Eye\nSpecialist',
              'assets/icons/eye_specialist.png',
              kOrangeColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => EyeListPage())),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: CategoryCard(
              'Internal\nSpecialist',
              '',
              kBlueColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => InternalListPage())),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: CategoryCard(
              'Neurosurgery\nSpecialist',
              '',
              kYellowColor,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NeurosurgeryListPage())),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: CategoryCard(
              'Orthopedist\nSpecialist',
              '',
              kOrangeColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrthopedistListPage())),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: CategoryCard(
              'Gynecologist\nSpecialist',
              '',
              kBlueColor,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GynecologistListPage())),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: CategoryCard(
              'Dermatologist\nSpecialist',
              '',
              kYellowColor,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DermatologistListPage())),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: CategoryCard(
              'Psychiatry\nSpecialist',
              '',
              kOrangeColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => PsychiatryListPage())),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: CategoryCard(
              'Urologist\nSpecialist',
              '',
              kBlueColor,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => UrologistListPage())),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: CategoryCard(
              'General\nSurgery',
              '',
              kYellowColor,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GeneralSurgeryListPage())),
          ),
          SizedBox(
            width: 20,
          ),
        ],
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
            'د/ محمد مسعود حجازي',
            'Psychiatry Specialist',
            'assets/images/doctor2.png',
            'اخصائي امراض نفسيه وعصبيه.',
            '1شارع الامين - ميدان شرف.',
            kBlueColor,
            'من السبت الي الاربعاء',
            'من 2 ظهرا الي 9 مساء',
            '01201576292',
          ),
          SizedBox(
            height: 20,
          ),
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
          DoctorCard(
            'د/ حامد السيد اللقوه',
            'Obstetrician and gynecologist',
            'assets/images/doctor2.png',
            'استاذ النساء والتوليد والعقم جامعه المنوفيه.',
            'شبين الكوم - امام القصر العيني.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01094677633 / 01094677692',
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
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01061198006',
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
            'د/محمد نبيل المرواني',
            'Neurosurgery Specialist',
            'assets/images/doctor2.png',
            'دكتوراه المخ والاعصاب والقسطره المخيه، علاج الانزلاق الغضروفي بدون جراحه، علاج جلطات ونزيف المخ بالقسطره.',
            'شبين الكوم - ميدان شرف - امام مركز النخبه للاشعه.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01092772600',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/احمد ندا',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            'اخصائي جراحه العظام والعمود الفقري والمفاصل، اصلاح التشوهات وقصر العظام والعيوب الخلقيه، بمستشفي شبين الكوم التعليمي،',
            'شبين الكوم - ميدان شرف - اعلي النخبه للاشعه - الدور الثاني.',
            kOrangeColor,
            'الميعاد',
            'غير معروف',
            '01002415125 / 01111154251',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ فيصل محمد جوده',
            'General Surgery',
            'assets/images/doctor2.png',
            'استشاري الجراحه العامه والمناظير والشرج.',
            'شبين الكوم – ميدان شرف – الدور التاني اعلي مركز النخبه.',
            kBlueColor,
            'الميعاد',
            'غير معروف',
            '01028830732 / 01006862580',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'د/ محمد كمال عمر',
            'Urologist Specialist',
            'assets/images/doctor2.png',
            'استشاري جراحه المسالك البوليه - كليه الطب، زميل جامعه كليفلاند كلينيك - امريكا.',
            'شبين الكوم - ميدان شرف - اعلي مركز النخبه للاشعه - الدور الرابع.',
            kYellowColor,
            'الميعاد',
            'غير معروف',
            '01066949454',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
