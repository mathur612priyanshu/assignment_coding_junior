import 'package:flutter/material.dart';

class OurStudent extends StatelessWidget {
  const OurStudent({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
        children: [
          // Title
          const Text(
            "Our Student",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15), // Spacing

          // Student avatars
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              CircleAvatar(radius: 13, backgroundColor: Colors.pink),
              SizedBox(width: 5), // Spacing between avatars
              CircleAvatar(radius: 13, backgroundColor: Colors.lightBlue),
              SizedBox(width: 5), // Spacing
              CircleAvatar(radius: 13, backgroundColor: Colors.orange),
              SizedBox(width: 5), // Spacing
              CircleAvatar(radius: 13, backgroundColor: Colors.brown),
              SizedBox(width: 5), // Spacing
              CircleAvatar(radius: 13, backgroundColor: Colors.purple),
            ],
          ),
          const SizedBox(height: 15), // Spacing

          // Course title
          Text(
            "Photoshop Editing Course",
            style: TextStyle(
              fontSize: screenWidth * 0.055, // Responsive font size
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10), // Spacing

          // Course description
          Text(
            "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.",
            style: TextStyle(
              color: Colors.black87,
              fontSize: screenWidth * 0.04, // Responsive font size
            ),
          ),
          const SizedBox(height: 15), // Spacing

          // Lessons and duration information
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.play_circle_outlined),
                  SizedBox(width: screenWidth * 0.02), // Responsive spacing
                  Text(
                    "30 Lessons",
                    style: TextStyle(
                      fontSize: screenWidth * 0.04, // Responsive font size
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.alarm_rounded),
                  SizedBox(width: screenWidth * 0.02), // Responsive spacing
                  Text(
                    "13h 30min",
                    style: TextStyle(
                      fontSize: screenWidth * 0.04, // Responsive font size
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
