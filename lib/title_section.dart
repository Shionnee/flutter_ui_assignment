import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    required this.name,
    required this.location,
    super.key,
  });
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red.shade500),
          const Text('41'),
        ],
      ),
    );
  }
}
