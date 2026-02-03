import 'package:flutter/material.dart';

class SecContainer extends StatelessWidget {
  const SecContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 380),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 1150,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withValues(alpha: 1),
                    blurRadius: 10
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    _Info(title: 'Completion', value: '100%', color: Colors.green),
                    _Info(title: 'Total Questions', value: '20', color: Colors.purple),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    _Info(title: 'Correct', value: '13', color: Colors.green),
                    _Info(title: 'Wrong', value: '7', color: Colors.red),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class _Info extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _Info({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}