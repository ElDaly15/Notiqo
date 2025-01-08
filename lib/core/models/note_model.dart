import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 1)
class NoteModel {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;
  @HiveField(4)
  DateTime dataTime;
  @HiveField(5)
  String? id;

  NoteModel(
      {required this.title,
      required this.content,
      required this.date,
      required this.color,
      required this.dataTime,
      required this.id});
}
