import 'package:flutter/material.dart';

class NowPlayingBar extends StatelessWidget {
  const NowPlayingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            color: Colors.grey[800],
            child: const Icon(Icons.music_note, color: Colors.white),
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'First Time',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  'ILLENIUM',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(Icons.devices, color: Colors.white),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: const Icon(Icons.check, size: 16),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.play_arrow),
        ],
      ),
    );
  }
}
