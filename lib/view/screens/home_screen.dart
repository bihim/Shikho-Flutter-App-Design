import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_app/global/global_values.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalValues.backgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.5.h),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              _topIntro(),
              SizedBox(
                height: 5.h,
              ),
              _chipExpert(),
              SizedBox(
                height: 5.h,
              ),
              _liveClass(),
              SizedBox(
                height: 3.h,
              ),
              _gridSubjects(),
              SizedBox(
                height: 4.h,
              ),
              /*Recommended*/
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      GlobalValues.recommendedLearning,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Mukti',
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: GlobalValues.liveSubjectColor,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    _recommendLearning(),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              /*Recently Viewed*/
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      GlobalValues.recentLearning,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Mukti',
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: GlobalValues.liveSubjectColor,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    _recommendLearning(),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              _upcomingClasses(),
              SizedBox(
                height: 1.h,
              ),
              _seeAllClasses(),
              SizedBox(
                height: 3.h,
              ),
              _courses(),
              SizedBox(
                height: 3.h,
              ),
              _newsAndOffers(),
            ],
          ),
        ),
      ),
    );
  }

  Container _newsAndOffers() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GlobalValues.newsOfferText,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Mukti',
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: GlobalValues.liveSubjectColor,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.h),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    GlobalValues.newsOfferTop,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Mukti',
                      fontWeight: FontWeight.bold,
                      color: GlobalValues.textColorTopAnother,
                    ),
                  ),
                  SizedBox(
                    height: 0.3.h,
                  ),
                  Text(
                    GlobalValues.newsOfferTitle,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Mukti',
                      fontWeight: FontWeight.bold,
                      color: GlobalValues.textColorTop,
                    ),
                  ),
                  SizedBox(
                    height: 0.3.h,
                  ),
                  Text(
                    GlobalValues.newsOfferDescription,
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontFamily: 'Mukti',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _courses() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              GlobalValues.coursesText,
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Mukti',
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: GlobalValues.liveSubjectColor,
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.h),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/courses.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          GlobalValues.coursesName,
                          style: TextStyle(
                            color: GlobalValues.recommendedColorSecond,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            fontFamily: 'Mukti',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: GlobalValues.coursesValidityName,
                                style: TextStyle(
                                  color: GlobalValues.recommendedColorSecond,
                                  fontSize: 18.sp,
                                  fontFamily: 'Mukti',
                                ),
                              ),
                              TextSpan(
                                text: ' ${GlobalValues.coursesValidity}',
                                style: TextStyle(
                                  color: GlobalValues.recommendedColorSecond,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mukti',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Color(0xFFECEEFF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(2.h),
                            bottomRight: Radius.circular(2.h),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              GlobalValues.courseFee,
                              style: TextStyle(
                                color: GlobalValues.recommendedColorSecond,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mukti',
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              GlobalValues.courseFeeDiscount,
                              style: TextStyle(
                                color: GlobalValues.recommendedColorSecond,
                                fontSize: 17.sp,
                                fontFamily: 'Mukti',
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(GlobalValues.liveButtonColor),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.5.h),
                                  ),
                                ),
                              ),
                              onPressed:GlobalValues.toast,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Text(
                                  GlobalValues.courseSubmit,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Mukti',
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _seeAllClasses() {
    return Container(
      width: double.infinity,
      height: 8.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: GlobalValues.toast,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                GlobalValues.seeAllClasses,
                style: TextStyle(
                  color: GlobalValues.liveSubjectColor,
                  fontFamily: 'Mukti',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.chevron_right_outlined,
                color: GlobalValues.liveSubjectColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _upcomingClasses() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GlobalValues.upcomingClasses,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Mukti',
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: GlobalValues.liveSubjectColor,
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: GlobalValues.listViewVertical.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 24.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.h),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 8.h,
                                width: 16.w,
                                decoration: BoxDecoration(
                                  color: Color(GlobalValues.listViewVertical[index].assetBackgroundColor),
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.h),
                                  child: SvgPicture.asset(GlobalValues.listViewVertical[index].assetName),
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: GlobalValues.listViewVertical[index].subjectName,
                                      style: TextStyle(
                                        color: GlobalValues.liveSubjectColor,
                                        fontFamily: 'Mukti',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n${GlobalValues.listViewVertical[index].subjectText}',
                                      style: TextStyle(
                                        color: GlobalValues.liveSubjectColor,
                                        fontFamily: 'Mukti',
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                width: 10.w,
                                height: 10.h,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F6F7),
                                  shape: BoxShape.circle,
                                ),
                                child: GlobalValues.listViewVertical[index].notified == false
                                    ? Icon(
                                        Icons.notifications,
                                        color: Color(0xFFB6C4CF),
                                      )
                                    : Icon(
                                        Icons.notifications_active,
                                        color: Color(0xFF39B54A),
                                      ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.h),
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                '${GlobalValues.liveMentor} ${GlobalValues.listViewVertical[index].mentorName}',
                                style: TextStyle(
                                  color: GlobalValues.liveSubjectColor,
                                  fontFamily: 'Mukti',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.h),
                            child: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.event,
                                    color: Color(0xFFB1BFCA),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    GlobalValues.listViewVertical[index].date,
                                    style: TextStyle(
                                      color: Color(0xFF8E9AA3),
                                      fontFamily: 'Mukti',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  VerticalDivider(
                                    width: 1.w,
                                    thickness: 0.3.h,
                                    color: Color(0xFF8E9AA3),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    GlobalValues.listViewVertical[index].time,
                                    style: TextStyle(
                                      color: Color(0xFF8E9AA3),
                                      fontFamily: 'Mukti',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: GlobalValues.toast,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Container _recommendLearning() {
    return Container(
      width: double.infinity,
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: GlobalValues.listView.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 2.h, 0),
            child: InkWell(
              child: Container(
                height: 20.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.asset(GlobalValues.listView[index].assetName),
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Text(
                        GlobalValues.listView[index].recommendName,
                        style: TextStyle(
                          color: GlobalValues.recommendedColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          fontFamily: 'Mukti',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Text(
                        GlobalValues.listView[index].recommendText,
                        style: TextStyle(
                          color: GlobalValues.recommendedColorSecond,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          height: 1.2,
                          fontFamily: 'Mukti',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: GlobalValues.toast,
            ),
          );
        },
      ),
    );
  }

  Container _gridSubjects() {
    return Container(
      height: 47.h,
      width: double.infinity,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: GlobalValues.gridList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(0.8.h),
            child: Material(
              child: InkWell(
                onTap: GlobalValues.toast,
                child: Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.h),
                    color: Color(GlobalValues.gridList[index].hexColor),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(100), bottomLeft: Radius.circular(100)),
                            color: Colors.black12,
                            shape: BoxShape.rectangle,
                          ),
                          height: 3.h,
                          width: 12.w,
                        ),
                        left: 4.h,
                      ),
                      Positioned(
                        child: SvgPicture.asset(
                          GlobalValues.gridList[index].assetName,
                          height: 5.h,
                          width: 5.h,
                        ),
                        right: 3.h,
                        top: 3.h,
                      ),
                      Positioned(
                        bottom: 3.h,
                        left: 2.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: GlobalValues.gridList[index].subjectName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mukti',
                                  fontSize: 20.sp,
                                ),
                              ),
                              TextSpan(
                                text: '\n${GlobalValues.gridList[index].subjectText}',
                                style: TextStyle(
                                  fontFamily: 'Mukti',
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container _liveClass() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.h),
        color: GlobalValues.liveBackgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/live.png',
                            height: 5.h,
                            width: 20.w,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            GlobalValues.liveWatching,
                            style: TextStyle(
                              color: GlobalValues.liveWatchingColor,
                              fontFamily: 'Atkinson',
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        GlobalValues.liveConceptClass,
                        style: TextStyle(
                          color: GlobalValues.liveConceptClassColor,
                          fontFamily: 'Mukti',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SvgPicture.asset('assets/math.svg'),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                GlobalValues.liveSubject,
                                style: TextStyle(
                                  color: GlobalValues.liveSubjectColor,
                                  fontFamily: 'Mukti',
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            GlobalValues.liveSubjectTopic,
                            style: TextStyle(
                              color: GlobalValues.liveSubjectColor,
                              fontFamily: 'Mukti',
                              fontSize: 16.sp,
                            ),
                          ),
                          Container(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: GlobalValues.liveMentor,
                                    style: TextStyle(
                                      color: GlobalValues.liveSubjectColor,
                                      fontSize: 15.sp,
                                      fontFamily: 'Mukti',
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${GlobalValues.liveMentorName}',
                                    style: TextStyle(
                                      color: GlobalValues.liveSubjectColor,
                                      fontSize: 15.sp,
                                      fontFamily: 'Mukti',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/live_pic.png'),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(GlobalValues.liveButtonColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.5.h),
                          ),
                        ),
                      ),
                      onPressed: GlobalValues.toast,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Text(
                          GlobalValues.liveButton,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mukti',
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _chipExpert() {
    return Row(
      children: [
        Container(
          height: 8.h,
          width: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.h),
            color: GlobalValues.chipColor,
            border: Border.all(
              color: GlobalValues.chipBorderColor,
            ),
          ),
          child: Row(
            children: [
              Image.asset('assets/expertise_level.png'),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: GlobalValues.level,
                      style: TextStyle(
                        color: GlobalValues.levelColor,
                        fontFamily: 'Atkinson',
                        fontSize: 15.sp,
                      ),
                    ),
                    TextSpan(
                      text: '\n${GlobalValues.levelTitle}',
                      style: TextStyle(
                        color: GlobalValues.textColorTop,
                        fontSize: 20.sp,
                        fontFamily: 'Atkinson',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Container(
          height: 5.h,
          width: 5.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: GlobalValues.chipColor,
            border: Border.all(color: GlobalValues.textColorTop, width: 0.8.w),
          ),
          child: Icon(
            Icons.insights_outlined,
            color: GlobalValues.textColorTop,
          ),
        ),
      ],
    );
  }

  Row _topIntro() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: GlobalValues.introText,
                    style: TextStyle(
                      color: GlobalValues.textColorTop,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' ${GlobalValues.introTextName}',
                    style: TextStyle(color: GlobalValues.textColorTopAnother, fontSize: 24.sp, fontFamily: 'Atkinson'),
                  ),
                ],
              ),
            ),
            Text(
              GlobalValues.learnNew,
              style: TextStyle(
                color: GlobalValues.textColorTop,
                fontFamily: 'Mukti',
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Material(
          child: InkWell(
            onTap: GlobalValues.toast,
            child: Badge(
              elevation: 0,
              badgeColor: GlobalValues.textColorTopAnother,
              position: BadgePosition.topEnd(top: -0.1.h, end: -0.1.h),
              padding: EdgeInsets.all(0.6.h),
              child: Icon(
                Icons.notifications_outlined,
                size: 3.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
