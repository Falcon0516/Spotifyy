import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 40,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              title: Row(
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'All';
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color:
                            _selectedCategory == 'All'
                                ? const Color(0xFF1ED760)
                                : Colors.grey[800],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'All',
                        style: TextStyle(
                          color:
                              _selectedCategory == 'All'
                                  ? Colors.black
                                  : Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'Music';
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color:
                            _selectedCategory == 'Music'
                                ? const Color(0xFF1ED760)
                                : Colors.grey[800],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Music',
                        style: TextStyle(
                          color:
                              _selectedCategory == 'Music'
                                  ? Colors.black
                                  : Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'Podcasts';
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color:
                            _selectedCategory == 'Podcasts'
                                ? const Color(0xFF1ED760)
                                : Colors.grey[800],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Podcasts',
                        style: TextStyle(
                          color:
                              _selectedCategory == 'Podcasts'
                                  ? Colors.black
                                  : Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _selectedCategory == 'All'
              ? _buildAllContent()
              : _selectedCategory == 'Music'
              ? _buildMusicContent()
              : _buildPodcastsContent(),
        ],
      ),
    );
  }

  Widget _buildAllContent() {
    return SliverList(
      delegate: SliverChildListDelegate([
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Liked Songs',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        _buildRecentRow('Liked Songs', 'NEFFEX'),
        _buildRecentRow(
          'Koi Naa (From "Bhool Chuk Maaf")',
          'The Machine Radio',
        ),
        _buildRecentRow('Up From the Bottom', 'Mortals'),
        _buildRecentRow('Lana Del Rey', 'If You Care (Slowed)'),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Jump back in',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildJumpBackItem('BLAH!', 'KORDHELL', 'assets/blah.jpeg'),
              _buildJumpBackItem(
                'Slava Funk',
                'PHONK WALKER',
                'assets/slava_funk.jpeg',
              ),
              _buildJumpBackItem(
                'AVANGARD SLOWED',
                'LXST CXNTURY',
                'assets/avangard_slowed.jpeg',
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Discover picks for you',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 200, // Adjusted height
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildDiscoverItem(
                'CLOSE EYES',
                'DVRST',
                'assets/close_eyes.jpeg',
              ),
              _buildDiscoverItem(
                'METAMORPHOSIS',
                'INTERWORLD',
                'assets/metamorphosis.jpeg',
              ),
              _buildDiscoverItem(
                'TOKYO DRIFT',
                'Teriyaki Boyz',
                'assets/tokyo_drift.jpeg',
              ),
            ],
          ),
        ),
        const SizedBox(height: 70),
      ]),
    );
  }

  Widget _buildMusicContent() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NEW MUSIC FRIDAY',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Handpicked fresh new international music from this week!',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMusicGridItem(
                    'NO LIMIT (Remixes)',
                    'Mqx, Halo King, ilysmoke',
                    'assets/no_limit.jpeg',
                  ),
                  _buildMusicGridItem('VOX', 'Proof Nation', 'assets/vox.jpeg'),
                  _buildMusicGridItem(
                    'CORVETTE',
                    'NUEKI',
                    'assets/corvette.jpeg',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Friday\'s freshest playlists',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildPlaylistGridItem('Explore New', 'assets/explore.jpeg'),
                  _buildPlaylistGridItem(
                    'Best Phonk(playlist)',
                    'assets/collage.jpeg',
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 70),
      ]),
    );
  }

  Widget _buildPodcastsContent() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You haven\'t followed any podcasts yet',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Follow your favorites to stay up to date.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  child: const Text(
                    'Browse podcasts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 70),
      ]),
    );
  }

  Widget _buildRecentRow(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(subtitle, style: TextStyle(color: Colors.grey[400])),
          ],
        ),
      ),
    );
  }

  Widget _buildJumpBackItem(String title, String subtitle, String imageUrl) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imageUrl,
              width: 160,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildDiscoverItem(String title, String subtitle, String imageUrl) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imageUrl,
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildMusicGridItem(String title, String subtitle, String imageUrl) {
    return Expanded(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[400], fontSize: 10),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistGridItem(String title, String imageUrl) {
    return Expanded(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imageUrl,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
