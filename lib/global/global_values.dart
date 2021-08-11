import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learning_app/model/recommended_learning_model.dart';
import 'package:learning_app/model/subjects_grid_model.dart';
import 'package:learning_app/model/upcoming_classes_model.dart';

class GlobalValues {
  static var backgroundColor = Color(0xFFF3F5F9);
  static var textColorTop = Color(0xFF354894);
  static var textColorTopAnother = Color(0xFFCF278D);

  /*Top Intro*/
  static var introText = 'Hi,';
  static var introTextName = 'Abdullah';
  static var learnNew = 'আজকে নতুন কি শিখতে চাও?';

  /*Chip Value*/
  static var level = 'Level 6';
  static var levelTitle = 'EXPERT';
  static var chipColor = Colors.white;
  static var chipBorderColor = Color(0x33182A88);
  static var levelColor = Color(0x66182A88);

  /*Live*/
  static var liveBackgroundColor = Colors.white;
  static var liveWatching = '512 watching';
  static var liveWatchingColor = Color(0xFF454C7E);
  static var liveConceptClass = 'কন্সেপ্ট ক্লাস';
  static var liveConceptClassColor = Color(0xFF00B4A9);
  static var liveSubject = 'সাধারণ গণিত';
  static var liveSubjectColor = Color(0xFF373D66);
  static var liveSubjectTopic = 'অধ্যায় ১২ - আবৃত ও অনাবৃত সংখ্যা';
  static var liveMentor = "মেন্টরঃ";
  static var liveMentorName = "Zishan Zakaria";
  static var liveButton = 'এখনই জয়েন করুন';
  static var liveButtonColor = Color(0xFF5468FF);

  static var gridList = [
    SubjectsGridModel(id: 1, subjectName: 'উচ্চতর গণিত', subjectText: '30% সম্পন্ন হয়েছে', assetName: 'assets/graph.svg', hexColor: 0xFF9324EA),
    SubjectsGridModel(id: 2, subjectName: 'পদার্থ বিদ্যা', subjectText: '10% সম্পন্ন হয়েছে', assetName: 'assets/earth.svg', hexColor: 0xFF6070E9),
    SubjectsGridModel(id: 3, subjectName: 'জীব বিজ্ঞান', subjectText: 'শেখা শুরু করুন', assetName: 'assets/dna.svg', hexColor: 0xFF3BC78A),
    SubjectsGridModel(id: 4, subjectName: 'রসায়ন', subjectText: '100% সম্পন্ন হয়েছে', assetName: 'assets/lab.svg', hexColor: 0xFF3CBFFA),
  ];

  /*Recommended Learning*/
  static var listView = [
    RecommendedLearningModel(
        id: 1,
        recommendName: 'General Maths\nসেট ও ফাংশন',
        recommendText: '1.1 - পৌণঃপুনিক থেকে সাধারণ ভগ্নাংশে রূপান্তর',
        assetName: 'assets/image_one.png'),
    RecommendedLearningModel(
        id: 2,
        recommendName: 'General Maths\nসেট ও ফাংশন',
        recommendText: '1.2 - পৌণঃপুনিক থেকে সাধারণ ভগ্নাংশে রূপান্তর',
        assetName: 'assets/image_two.png'),
    RecommendedLearningModel(
        id: 3,
        recommendName: 'General Maths\nসেট ও ফাংশন',
        recommendText: '1.3 - পৌণঃপুনিক থেকে সাধারণ ভগ্নাংশে রূপান্তর',
        assetName: 'assets/image_one.png'),
  ];

  /*Recommended Learning*/
  static var recommendedLearning = 'RECOMMENDED LEARNING';
  static var recommendedColor = Color(0xFF5468FF);
  static var recommendedColorSecond = Color(0xFF232C6A);

  /*Recent Learning*/
  static var recentLearning = 'RECENTLY VIEWED';

  /*Upcoming Classes*/
  static var upcomingClasses = 'UPCOMING CLASSES';
  static var listViewVertical = [
    UpcomingClassesModel(
        id: 1,
        subjectName: 'সাধারণ গণিত',
        subjectText: 'অধ্যায় ১২ - আবৃত ও অনাবৃত সংখ্যা',
        assetName: 'assets/math.svg',
        assetBackgroundColor: 0xFFFFEFE0,
        mentorName: 'জিসান জাকারিয়া',
        date: '12-04-21',
        time: '8:30pm',
        notified: false),
    UpcomingClassesModel(
        id: 2,
        subjectName: 'সাধারণ গণিত',
        subjectText: 'অধ্যায় ১২ - আবৃত ও অনাবৃত সংখ্যা',
        assetName: 'assets/dna.svg',
        assetBackgroundColor: 0xFFD9FFF2,
        mentorName: 'জিসান জাকারিয়া',
        date: '12-04-21',
        time: '8:30pm',
        notified: true),
    UpcomingClassesModel(
        id: 3,
        subjectName: 'সাধারণ গণিত',
        subjectText: 'অধ্যায় ১২ - আবৃত ও অনাবৃত সংখ্যা',
        assetName: 'assets/earth.svg',
        assetBackgroundColor: 0xFFE7ECFF,
        mentorName: 'জিসান জাকারিয়া',
        date: '12-04-21',
        time: '8:30pm',
        notified: true),
  ];
  static var seeAllClasses = 'সব ক্লাস দেখুন';

  /*Courses*/
  static var coursesText = 'COURSES';
  static var coursesName = 'সাধারণ গণিত ৩৬০';
  static var coursesValidityName = 'কোর্সের মেয়াদ';
  static var coursesValidity = '৬০ দিন';
  static var courseFee = 'মাত্র ৳১২০০';
  static var courseFeeDiscount = '৳১৫০০';
  static var courseSubmit = 'কোর্সে ভর্তি হোন';

  /*News and Offers*/
  static var newsOfferText = 'NEWS AND OFFERS';
  static var newsOfferTop = 'পহেলা বৈশাখ অফার';
  static var newsOfferTitle = 'শিখো সাবস্ক্রিপশনে ২০% ছাড়!';
  static var newsOfferDescription =
      'আন্তর্জাতিক অর্থনীতি, অর্থনীতির জন্য পরিসংখ্যান, গাণিতিক অর্থনীতি, সামষ্টিক অর্থনীতি, শিল্প অর্থনীতি, গবেষণা পদ্ধতি';

  static void toast(){
    Fluttertoast.showToast(
        msg: "You have clicked me!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0);
  }
}
