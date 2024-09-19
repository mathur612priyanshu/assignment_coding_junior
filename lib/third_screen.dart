import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using Scaffold for better layout structure
      backgroundColor: const Color.fromARGB(243, 238, 237, 237),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 150, right: 20, left: 20, bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Payment Success",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$35.00",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Add your desired action here, for example:
                  Navigator.pop(context); // To go back to the previous screen
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 40,
                  margin: const EdgeInsets.only(
                      bottom: 30), // Add margin for spacing
                  padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 50), // Padding for better sizing
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 174, 208, 36),
                  ),
                  child: Center(
                    child: const Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 100,
              left: 150,
              child: CircleAvatar(
                radius: 65,
                backgroundColor: const Color.fromARGB(243, 229, 229, 229),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.check),
                ),
              )),
        ],
      ),
    );
  }
}
