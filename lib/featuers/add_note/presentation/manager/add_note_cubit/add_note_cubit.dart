import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notiqo/core/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Future<void> AddNote({required NoteModel noteModel}) async {
    try {
      emit(AddNoteLoading());

      var notes = await Hive.box<NoteModel>('notes');
      await notes.put('2', noteModel);

      emit(AddNoteSuccess());
    } catch (e) {
      print(e);
      emit(AddNoteFailuer());
    }
  }
}
