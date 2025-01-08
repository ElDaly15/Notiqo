import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 1)
class NoteModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  @HiveField(4)
  final DateTime dataTime;

  NoteModel(
      {required this.title,
      required this.content,
      required this.date,
      required this.color,
      required this.dataTime});
}
