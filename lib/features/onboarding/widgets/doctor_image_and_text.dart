import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/logo_low_opacity_no_bg.png",
          height: 500.h,
          width: 500.w,
          fit: BoxFit.contain,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(
            "assets/images/onboarding_doctor.png",
            height: 500.h,
            width: 500.w,

            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            "Best Doctor \n Appointment App",
            textAlign: TextAlign.center,
            style: Styles.font32BlueBold,
          ),
        ),
      ],
    );
  }
}
