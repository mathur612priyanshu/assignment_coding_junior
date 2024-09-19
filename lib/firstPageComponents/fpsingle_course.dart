import 'package:flutter/material.dart';

class SingleCourse extends StatelessWidget {
  const SingleCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width, // Full width of the screen
      height: MediaQuery.of(context).size.height / 8, // Responsive height
      padding: const EdgeInsets.all(20), // Padding inside the container
      child: Row(
        children: [
          // Course image
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset('assets/ps.png'), // Course image asset
          ),
          const SizedBox(width: 20), // Space between image and text
          // Course details
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(
                  "Adobe Xd Editing Course", // Course title
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5), // Space below the title
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Space between elements
                  children: [
                    // Rating information
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.orange, // Star color
                        ),
                        Text(
                          "4.8", // Rating
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        Text(
                          "(230)", // Number of ratings
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ],
                    ),
                    const SizedBox(
                        width: 20), // Space between rating and lesson info
                    // Lesson information
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          size: 20,
                        ),
                        Text(
                          " 30", // Number of lessons
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        Text(
                          " Lessons", // Lesson text
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
