class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String audioUrl;
  final Duration duration;
  final String imageUrl;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.audioUrl,
    required this.duration,
    this.imageUrl = '',
  });

  // Factory constructor for creating Song from JSON/map data
  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      id: map['id'] as String,
      title: map['title'] as String,
      artist: map['artist'] as String,
      album: map['album'] as String,
      audioUrl: map['audioUrl'] as String,
      duration: Duration(seconds: map['duration'] as int),
      imageUrl: map['imageUrl'] as String? ?? '',
    );
  }

  // Convert Song to map for serialization
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'artist': artist,
      'album': album,
      'audioUrl': audioUrl,
      'duration': duration.inSeconds,
      'imageUrl': imageUrl,
    };
  }

  @override
  String toString() {
    return 'Song(id: $id, title: $title, artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Song && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}