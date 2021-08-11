class UpcomingClassesModel {
  int id;
  String subjectName;
  String subjectText;
  String assetName;
  int assetBackgroundColor;
  String mentorName;
  String date;
  String time;
  bool notified;

  UpcomingClassesModel(
      {required this.id,
      required this.subjectName,
      required this.subjectText,
      required this.assetName,
      required this.assetBackgroundColor,
      required this.mentorName,
      required this.date,
      required this.time,
      required this.notified});
}
