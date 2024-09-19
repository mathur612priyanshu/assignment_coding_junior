import 'package:flutter/material.dart';
import 'package:flutter_assignment/second_screen.dart';

class CourseList extends StatelessWidget {
  CourseList({super.key});

  // List of course names to display
  final List<String> courseName = [
    "Photoshop Editing Course",
    "Illustrator Editing Course",
    "Something Editing Course",
    "Some Type of Editing Course"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Horizontal scrolling
        itemCount: courseName.length, // Number of items in the list
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigate to the second screen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(15), // Padding inside the container
              margin: const EdgeInsets.only(right: 17), // Margin between items
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              width:
                  MediaQuery.of(context).size.width / 2.2, // Responsive width
              child: Column(
                children: [
                  // Course image
                  Container(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      'assets/ps.png', // Course image asset
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Course name text
                  Text(
                    courseName[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Participant information
                  Row(
                    children: [
                      // Small circles representing participants
                      _buildParticipantCircle(Colors.purple),
                      _buildParticipantCircle(Colors.blue),
                      _buildParticipantCircle(Colors.brown),
                      _buildParticipantCircleWithText(
                        const Color.fromARGB(255, 174, 208, 36),
                        "+20",
                      ),
                      const SizedBox(width: 15),
                      Text("Participant", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 202, 202, 202), // Line color
                    height: 30, // Space above and below the line
                    thickness: 1, // Line thickness
                  ),
                  // Rating and lesson information
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRating(),
                      _buildLessonInfo(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper method to build participant circles
  Widget _buildParticipantCircle(Color color) {
    return CircleAvatar(
      radius: 10,
      backgroundColor: color,
    );
  }

  // Helper method to build participant circle with text
  Widget _buildParticipantCircleWithText(Color color, String text) {
    return CircleAvatar(
      radius: 10,
      backgroundColor: color,
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 10)),
    );
  }

  // Helper method to build the rating row
  Widget _buildRating() {
    return Row(
      children: [
        Icon(Icons.star, size: 20, color: Colors.orange),
        Text("4.8 ", style: TextStyle(fontSize: 13, color: Colors.black87)),
        Text("(230)", style: TextStyle(fontSize: 8)),
      ],
    );
  }

  // Helper method to build the lesson info row
  Widget _buildLessonInfo() {
    return Row(
      children: [
        Icon(Icons.play_circle_outline_outlined, size: 20),
        Text(" 30", style: TextStyle(fontSize: 12)),
        Text(" Lessons", style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
