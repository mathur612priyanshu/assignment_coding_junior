import 'package:flutter/material.dart';
import 'package:flutter_assignment/firstPageComponents/FPsecond_row.dart';
import 'package:flutter_assignment/firstPageComponents/first_row.dart';
import 'package:flutter_assignment/firstPageComponents/fplist_view.dart';
import 'package:flutter_assignment/firstPageComponents/fpsingle_course.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen dimensions for responsive design
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromARGB(146, 224, 224, 224), // Background color
      padding: EdgeInsets.only(
        top: screenHeight * 0.08, // Responsive top padding
        right: screenWidth * 0.05, // Responsive right padding
        left: screenWidth * 0.05, // Responsive left padding
      ),
      child: Column(
        children: [
          // FirstRow widget with image, name, and color
          FirstRow(
            image: "https://www.example.com/image.png", // Example image URL
            name: "Christiana Amandla",
            color: Colors.white,
          ),

          const SizedBox(height: 25), // Spacing between widgets

          // SecondRow widget displaying the course name
          SecondRow(
            course: "Mathematics Course",
          ),

          const SizedBox(height: 13), // Additional spacing

          // Row for popular courses header and view all button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Course",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {
                  // Action for View All button
                },
                child: const Text(
                  "View All",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10), // Spacing

          // Horizontal list view for courses
          CourseList(),

          // Another row for popular courses header and view all button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Course",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {
                  // Action for View All button
                },
                child: const Text(
                  "View All",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),

          const SingleCourse(), // Single course widget
        ],
      ),
    );
  }
}
