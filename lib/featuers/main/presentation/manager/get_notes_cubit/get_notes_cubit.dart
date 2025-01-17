import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/const.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());
  Future<void> FetchNotes() async {
    emit(GetNotesLoading());
    try {
      var notes = await Hive.box<NoteModel>(Const.boxOfNotesName);
      List<NoteModel> noteList = [];
      for (int i = 0; i < notes.length; i++) {
        noteList.add(notes.getAt(i)!);
      }
      noteList.sort((a, b) => b.dataTime.compareTo(a.dataTime));
      emit(GetNotesSuccess(noteList));
    } catch (e) {
      print(e);
      emit(GetNotesFailuer());
    }
  }
}
