import '../models/song.dart';

// Sample Rajasthani songs data
// Note: Replace with actual audio file URLs or asset paths
const List<Song> sampleSongs = [
  Song(
    id: '1',
    title: 'Kesariya Balam',
    artist: 'Lata Mangeshkar',
    album: 'Classic Rajasthani',
    audioUrl: 'assets/audio/kesariya_balam.mp3', // Replace with actual file
    duration: Duration(minutes: 4, seconds: 32),
    imageUrl: 'assets/images/kesariya.jpg',
  ),
  Song(
    id: '2',
    title: 'Mohe Rang Do Laal',
    artist: 'Asha Bhosle',
    album: 'Rajasthani Folk',
    audioUrl: 'assets/audio/mohe_rang_do_laal.mp3', // Replace with actual file
    duration: Duration(minutes: 3, seconds: 45),
    imageUrl: 'assets/images/mohe_rang.jpg',
  ),
  Song(
    id: '3',
    title: 'Panihari',
    artist: 'Rajasthani Folk Singers',
    album: 'Traditional Rajasthani',
    audioUrl: 'assets/audio/panihari.mp3', // Replace with actual file
    duration: Duration(minutes: 5, seconds: 12),
    imageUrl: 'assets/images/panihari.jpg',
  ),
  Song(
    id: '4',
    title: 'Ghoomar',
    artist: 'Shreya Ghoshal',
    album: 'Rajasthani Dance',
    audioUrl: 'assets/audio/ghoomar.mp3', // Replace with actual file
    duration: Duration(minutes: 4, seconds: 18),
    imageUrl: 'assets/images/ghoomar.jpg',
  ),
  Song(
    id: '5',
    title: 'Kanhaiya',
    artist: 'Lata Mangeshkar',
    album: 'Devotional Rajasthani',
    audioUrl: 'assets/audio/kanhaiya.mp3', // Replace with actual file
    duration: Duration(minutes: 6, seconds: 30),
    imageUrl: 'assets/images/kanhaiya.jpg',
  ),
];

// Function to get all songs
List<Song> getAllSongs() {
  return sampleSongs;
}

// Function to get song by ID
Song? getSongById(String id) {
  return sampleSongs.firstWhere(
    (song) => song.id == id,
    orElse: () => throw Exception('Song not found'),
  );
}