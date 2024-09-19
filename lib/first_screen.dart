import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:flutter_assignment/home_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int myIndex = 0;

  // List of screens that will be displayed when the respective bottom navigation item is selected
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    Favourite(),
    Notification(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder makes the UI responsive by using the constraints of the parent widget
    return LayoutBuilder(
      builder: (context, constraints) {
        // Scaffold defines the structure of the screen, including the app's navigation
        return Scaffold(
          // The current selected screen will be displayed in the body
          body: _widgetOptions[myIndex],

          // Bottom navigation bar with custom icons and an active indicator
          bottomNavigationBar: Container(
            color: Colors.white,
            height: constraints.maxHeight *
                0.1, // Set the height based on the screen height
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Distribute items evenly
              children: [
                customNavItem(
                    0, Iconsax.home_2_copy, Iconsax.home_1, constraints),
                customNavItem(
                    1, Iconsax.heart_copy, Iconsax.heart, constraints),
                customNavItem(2, Iconsax.notification_copy,
                    Iconsax.notification, constraints),
                customNavItem(
                    3, Icons.person_outline, Icons.person, constraints),
              ],
            ),
          ),
        );
      },
    );
  }

  // Custom bottom navigation item with an animated indicator
  Widget customNavItem(int index, IconData icon, IconData activeIcon,
      BoxConstraints constraints) {
    bool isSelected = index == myIndex; // Check if this item is selected

    return GestureDetector(
      onTap: () {
        // Update the index to switch between screens
        setState(() {
          myIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min, // Keep the column's size minimal
        children: [
          // Animated indicator bar for the active icon
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut, // Smooth animation
            margin: const EdgeInsets.only(bottom: 10), // Space below the icon
            height: 4, // Height of the active indicator
            width: isSelected ? 30 : 0, // Show the indicator only if selected
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color.fromARGB(255, 174, 208, 36) // Active color
                  : Colors.transparent, // No indicator if not selected
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // Icon for each navigation item, changing color and icon based on the selected state
          Icon(
            isSelected ? activeIcon : icon, // Show active icon if selected
            size: constraints.maxWidth *
                0.07, // Icon size responsive to screen width
            color: isSelected
                ? const Color.fromARGB(255, 174, 208, 36) // Active color
                : Colors.grey, // Inactive color
          ),
        ],
      ),
    );
  }
}

// Placeholder for the Favourite screen
Widget Favourite() {
  return const Center(
    child: Text("Favourite Screen"),
  );
}

// Placeholder for the Notification screen
Widget Notification() {
  return const Center(
    child: Text("Notification Screen"),
  );
}

// Placeholder for the Profile screen
Widget Profile() {
  return const Center(
    child: Text("Profile Screen"),
  );
}
