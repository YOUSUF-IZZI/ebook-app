import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, this.height = 0.25, required this.imageUrl});
  final double height;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * height,
      child: AspectRatio(
        aspectRatio: 0.73,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(14)),
          ),
        ),
      ),
    );
  }
}
