import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? no ;
  fetchAllNotes(){
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      no = notesBox.values.toList();
      emit(NotesSuccess());
  }
}
