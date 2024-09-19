import 'package:flutter/material.dart';

class ChapterList extends StatelessWidget {
  ChapterList({super.key});

  // List of topics and corresponding durations
  final List<String> topic = [
    'Introduction',
    'Install Software',
    'Learn Tools',
    'Tracing Sketsa',
    'Illustrator',
    'Editing',
  ];

  final List<int> hour = [3, 1, 2, 2, 4, 1];

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(topic.length, (index) {
          return Container(
            margin: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01), // Responsive vertical margin
            color: Colors.white,
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03), // Padding for ListTile
              leading: Container(
                height: screenWidth * 0.1, // Responsive height
                width: screenWidth * 0.1, // Responsive width
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Icon(Icons.lock),
              ),
              title: Text(
                topic[index],
                style: TextStyle(
                    fontSize: screenWidth * 0.045), // Responsive font size
              ),
              subtitle: Text(
                "${hour[index]}h 30min",
                style: TextStyle(
                    fontSize: screenWidth * 0.035), // Responsive font size
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(7), // Rounded corners
                ),
                height: screenWidth * 0.1, // Responsive height
                width: screenWidth * 0.25, // Responsive width
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.play_circle_fill_outlined,
                      size: 20,
                      color: Colors.lightGreen,
                    ),
                    Text("Play Video"),
                  ],
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}
