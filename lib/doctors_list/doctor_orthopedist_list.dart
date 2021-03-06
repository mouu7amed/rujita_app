import 'package:rujita_app/components/doctor_card.dart';
import 'package:rujita_app/constant.dart';
import 'package:flutter/material.dart';

class OrthopedistListPage extends StatelessWidget {
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
                  'Doctor Orthopedist\nList',
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
            '??/ ???????? ??????????',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            '?????????????? ?????????? ???????????? ???????????????? ?????????????? ???????????? ???????????? ???????????? ?????????????? ???????????????? ?????????????? ???????????? ?????????????? ?????????????? ?????????????????? ???????? ?????????? ?????????? ?????????????? ?????????????? ??????????????????.',
            '???????? ?????????? ??? ?????????? ?????? ??? ?????? ?????????????? ??? ?????????? ????????????.',
            kOrangeColor,
            '??????????????',
            '?????? ??????????',
            '01060200068 / 01066915159',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            '??/???????? ??????',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            '???????????? ?????????? ???????????? ?????????????? ???????????? ?????????????????? ?????????? ???????????????? ???????? ???????????? ?????????????? ???????????????? ?????????????? ???????? ?????????? ??????????????????',
            '???????? ?????????? - ?????????? ?????? - ???????? ???????????? ???????????? - ?????????? ????????????.',
            kOrangeColor,
            '??????????????',
            '?????? ??????????',
            '01002415125 / 01111154251',
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            '??/ ?????? ???????????? ??????????',
            'Orthopedist Specialist',
            'assets/images/doctor2.png',
            '?????????????? ???? ?????????? ???????????? ?????????????? ??????????.',
            '???????? ?????????? -?????????? ?????? -?????? ??????????????.',
            kOrangeColor,
            '?????????? ??????????????????',
            '?????? ??????????',
            '01000964671',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
