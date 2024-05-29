import 'package:flutter/material.dart';
import 'LogIn.dart'; // Import the file where your LogIn page is defined

class Loadingscreen extends StatelessWidget {
  const Loadingscreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Simulate loading process (replace with your actual loading logic)
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the LogIn page after 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                LogIn()), // Replace LogIn() with your LogIn page widget
      );
    });

    return Container(
      color: Colors.white, // Set background color to white
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/images/logo.png'), // Add your image here
          const SizedBox(
              height:
                  20), // Add some space between the image and progress indicator
          const LinearProgressIndicator(), // Display a loading indicator while loading
        ],
      ),
    );
  }
}
