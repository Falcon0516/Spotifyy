import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.workspace_premium, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Premium',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Listen without limits. Try 2 months of Premium Individual for ₹119 with Spotify.',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Try 2 months for ₹119',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  '₹119 for 2 months, then ₹119 per month after. Offer only available if you haven\'t tried Premium before and you subscribe via Spotify. Offers via Google Play may differ. Terms apply.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Why join Premium?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildPremiumFeature(
                  Icons.volume_up,
                  'Ad-free music listening',
                ),
                const SizedBox(height: 16),
                _buildPremiumFeature(
                  Icons.download,
                  'Download to listen offline',
                ),
                const SizedBox(height: 16),
                _buildPremiumFeature(Icons.shuffle, 'Play songs in any order'),
                const SizedBox(height: 16),
                _buildCreateOptions(),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumFeature(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 28),
        const SizedBox(width: 16),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildCreateOptions() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.playlist_add, color: Colors.white),
            ),
            title: const Text('Playlist'),
            subtitle: const Text('Build a playlist with songs, or episodes'),
          ),
          const Divider(height: 1, color: Colors.grey),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.group, color: Colors.white),
            ),
            title: const Text('Collaborative Playlist'),
            subtitle: const Text(
              'Invite friends and create something together',
            ),
          ),
          const Divider(height: 1, color: Colors.grey),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.blender, color: Colors.white),
            ),
            title: const Text('Blend'),
            subtitle: const Text(
              'Combine tastes in a shared playlist with friends',
            ),
          ),
        ],
      ),
    );
  }
}
