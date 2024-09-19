import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SecondRow extends StatelessWidget {
  final String course; // Course name to display
  SecondRow({super.key, required this.course});

  final DateTime time = DateTime.now(); // Current date and time
  final List<String> month = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ]; // List of month names

  @override
  Widget build(BuildContext context) {
    // Calculate height for responsive design
    final double containerHeight = MediaQuery.of(context).size.height / 5.5;

    return Container(
      height: containerHeight,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 174, 208, 36), // Main container color
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      padding: const EdgeInsets.all(16), // Padding around the container
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 205, 240, 142), // Inner container color
              borderRadius: BorderRadius.circular(7), // Rounded corners
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(course,
                    style: TextStyle(fontSize: 16)), // Display course name
                Container(
                  height: 35,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 174, 208, 36), // Date container color
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar, size: 15), // Calendar icon
                      Text(
                        "${time.day} ${month[time.month - 1]}, ${time.year}", // Formatted date
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20), // Padding above the row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Completed section
                _buildStatCircle(Icons.check, "Completed", "20"),
                const SizedBox(width: 10), // Spacing between items
                const SizedBox(
                  height: 50, // Height for the vertical divider
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 205, 240, 142),
                    thickness: 2, // Thickness of the divider
                    width: 20, // Space between the two widgets
                  ),
                ),
                // Hours spent section
                _buildStatCircle(Icons.check, "Hours Spent", "455"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build circular stats
  Widget _buildStatCircle(IconData icon, String title, String value) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color.fromARGB(255, 205, 240, 142),
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 174, 208, 36),
            radius: 10,
            child: Icon(icon, size: 15, color: Colors.white),
          ),
        ),
        const SizedBox(width: 10), // Added spacing
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 15)),
            Text(
              value,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
