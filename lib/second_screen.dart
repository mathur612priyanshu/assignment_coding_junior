import 'package:flutter/material.dart';
import 'package:flutter_assignment/secondPageComponents/chapter_list.dart';
import 'package:flutter_assignment/secondPageComponents/spour_student.dart';
import 'package:flutter_assignment/third_screen.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(146, 224, 224, 224),
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back button
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 18,
                    ),
                  ),
                ),

                // Screen name
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                // Notification icon
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Iconsax.notification_copy,
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Spacing between header and content
            const OurStudent(), // Student information section
            const SizedBox(height: 20), // Spacing
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Video section title
                Text(
                  "Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),

                // View all button
                Text(
                  "View All",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            const SizedBox(height: 20), // Spacing
            Expanded(child: ChapterList()), // List of chapters
          ],
        ),
      ),
      // Bottom navigation bar
      bottomNavigationBar: Container(
        height: 100,
        margin: const EdgeInsets.all(20),
        child: Row(
          children: [
            // Print button
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 174, 208, 36),
              ),
              child: const Icon(
                Icons.print,
                color: Colors.white,
                size: 30,
              ),
            ),
            // Enroll now button
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 174, 208, 36),
                ),
                child: const Center(
                  child: Text("Enroll Now"), // Enroll button text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
