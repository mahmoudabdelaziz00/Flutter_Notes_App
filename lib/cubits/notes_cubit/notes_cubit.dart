import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note) async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> note = notesBox.values.toList();
      emit(NotesSuccess(note));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
