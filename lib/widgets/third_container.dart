
import 'package:flutter/material.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
      top: screenHeight * 0.62, // adjust if needed
      left: 0,
      right: 0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _Action(icon: Icons.refresh, label: 'Play Again'),
              _Action(icon: Icons.visibility, label: 'Review Answer'),
              _Action(icon: Icons.share, label: 'Share Score'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _Action(icon: Icons.picture_as_pdf, label: 'Generate PDF'),
              _Action(icon: Icons.home, label: 'Home'),
              _Action(icon: Icons.leaderboard, label: 'Leaderboard'),
            ],
          ),
        ],
      ),
    );
  }
}


class _Action extends StatelessWidget {
  final IconData icon;
  final String label;

  const _Action({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: const Color(0xFFEFE8FF),
          child: Icon(icon, color: const Color(0xFF8E5AF7)),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
