import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/notes_provider.dart';

class AddNoteScreen extends ConsumerWidget {
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _noteController,
              decoration: InputDecoration(labelText: 'Enter your note'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final noteText = _noteController.text;
                if (noteText.isNotEmpty) {
                  ref.read(notesProvider).addNote(noteText); // Call add note method
                  Navigator.of(context).pop(); // Go back to home screen
                }
              },
              child: Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }
}

