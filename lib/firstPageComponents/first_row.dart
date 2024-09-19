import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FirstRow extends StatelessWidget {
  final String image; // URL or asset path for the image
  final String name; // Name to display
  final Color color; // Color to use for customization

  FirstRow({
    super.key,
    required this.image,
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to set responsive sizes
    final double avatarSize = 55; // Size of the avatar

    return ListTile(
      leading: Container(
        width: avatarSize,
        height: avatarSize,
        decoration: const BoxDecoration(
          shape: BoxShape.circle, // Make the container circular
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.orange,
              Colors.red,
            ], // Define the gradient colors
            begin: Alignment.topRight, // Starting point of the gradient
            end: Alignment.bottomLeft, // Ending point of the gradient
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors
              .transparent, // Make background transparent to show the gradient
          child: Icon(
            Icons.person,
            size: avatarSize * 0.9, // Responsive icon size
            color: Colors.white, // Icon color for better visibility
          ),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        "Let's learn smartly", // Updated text for clarity
      ),
      trailing: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Iconsax.search_normal_1_copy,
          size: 20,
        ),
      ),
    );
  }
}
