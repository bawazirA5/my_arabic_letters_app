import 'package:flutter/material.dart';

class WidgetVideoImage extends StatelessWidget {
  const WidgetVideoImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          // * border radius for image
          borderRadius: BorderRadius.circular(10),
          // * image
          child: Image.asset(
            image,
            fit: BoxFit.fill,
            height: 100,
            width: double.infinity,
          ),
        ),
        // * play icon
        const Icon(
          Icons.play_circle_outline_outlined,
          size: 50,
          color: Color.fromARGB(255, 80, 139, 228),
        )
      ],
    );
  }
}
