import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ChangeNotifier to manage the list of notes
class NotesProvider extends ChangeNotifier {
  final List<String> _notes = []; // Private list to store notes

  List<String> get notes => _notes; // Getter to access notes

  void addNote(String note) {
    _notes.add(note); // Add a note to the list
    notifyListeners(); // Notify listeners to update the UI
  }

  void deleteNoteAt(int index) {
    _notes.removeAt(index); // Remove a note from the list
    notifyListeners(); // Notify listeners to update the UI
  }
}

// Riverpod provider for accessing the NotesProvider
final notesProvider = ChangeNotifierProvider<NotesProvider>((ref) {
  return NotesProvider(); // Return an instance of NotesProvider
});



