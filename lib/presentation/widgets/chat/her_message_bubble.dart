import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen_size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          "https://cdn131.picsart.com/350496690090201.jpg",
          width: screen_size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: screen_size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Enviando una imagen'),
            );
          },
        ));
  }
}
