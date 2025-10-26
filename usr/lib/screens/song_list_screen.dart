import 'package:flutter/material.dart';
import '../data/songs_data.dart';
import '../models/song.dart';
import 'player_screen.dart';

class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final songs = getAllSongs();

    return Scaffold(
      backgroundColor: const Color(0xFFE8F4FD), // Light blue background
      appBar: AppBar(
        title: const Text(
          'रajasthani Songs',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF8B4513), // Saddle brown
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: song.imageUrl.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          song.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const Icon(
                        Icons.music_note,
                        size: 30,
                        color: Color(0xFF8B4513),
                      ),
              ),
              title: Text(
                song.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B4513),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.artist,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF696969),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    song.album,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFFDC143C),
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.play_circle_filled),
                color: const Color(0xFFDC143C),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerScreen(song: song),
                    ),
                  );
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayerScreen(song: song),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}