import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: true,
            title: const Text(
              'Your Library',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            actions: [
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              IconButton(icon: const Icon(Icons.add), onPressed: () {}),
            ],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  _buildFilterChip('Playlists'),
                  const SizedBox(width: 8),
                  _buildFilterChip('Podcasts'),
                  const SizedBox(width: 8),
                  _buildFilterChip('Artists'),
                  const SizedBox(width: 8),
                  _buildFilterChip('Downloaded'),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  const Icon(Icons.swap_vert, size: 16),
                  const SizedBox(width: 8),
                  const Text('Recents'),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.grid_view, size: 20),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _buildLibraryItem(
                'Liked Songs',
                'Playlist • 252 songs',
                isPinned: true,
              ),
              _buildLibraryItem(
                'Your Episodes',
                'Saved & downloaded episodes',
                isPinned: true,
              ),
              _buildLibraryItem('The Chainsmokers', 'Artist'),
              _buildLibraryItem('Local Files', 'Playlist • 29 tracks'),
              _buildLibraryItem('Linkin Park', 'Artist'),
              _buildLibraryItem('Marshmello', 'Artist'),
              _buildLibraryItem('Playlist • Akshay', '', isEmoji: true),
              const SizedBox(height: 70),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label),
    );
  }

  Widget _buildLibraryItem(
    String title,
    String subtitle, {
    bool isPinned = false,
    bool isEmoji = false,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: SizedBox(
        width: 56,
        height: 56,
        child:
            isEmoji
                ? Container(
                  color: Colors.grey[900],
                  child: const Center(
                    child: Text('😊', style: TextStyle(fontSize: 24)),
                  ),
                )
                : isPinned
                ? Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue[300]!, Colors.purple[300]!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child:
                      isPinned && title == 'Liked Songs'
                          ? const Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 30,
                          )
                          : const Icon(
                            Icons.bookmark,
                            color: Colors.white,
                            size: 30,
                          ),
                )
                : Container(
                  color: Colors.grey[800],
                  child: const Icon(Icons.music_note),
                ),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey[400], fontSize: 12),
      ),
    );
  }
}
